//
//  BuildingLoader.swift
//  FreeroomsAssessment
//
//  Created by Anh Nguyen on 31/1/2025.
//

import Foundation

public class BuildingLoader {
    private var client: HttpClient
    private var url: URL
    
    public enum Error: Swift.Error {
        case connectivity, invalidData
    }
    
    public typealias Result = Swift.Result<[Building], Swift.Error>
    
    public init(client: HttpClient, url: URL) {
        self.client = client
        self.url = url
    }
    
    public func fetchBuildings() async -> Result  {
      switch await client.get(from: url) {
      case .success((let data, let response)):
        guard response.statusCode == 200, let decodedData = try? JSONDecoder().decode([RemoteBuilding].self, from: data) else {
          return .failure(Error.invalidData)
        }
        
        return .success(decodedData.map {
          Building(
            name: $0.building_name,
            id: $0.building_id.uuidString,
            latitude: $0.building_latitude,
            longitude: $0.building_longitude,
            aliases: $0.building_aliases
          )
        })
      case .failure(let error):
        print(error)
        return .failure(Error.connectivity)
      }
    }
}
