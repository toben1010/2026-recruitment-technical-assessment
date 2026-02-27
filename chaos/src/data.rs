use axum::{http::StatusCode, response::IntoResponse, Json};
use serde::{Deserialize, Serialize};
use serde_json::Value;

pub async fn process_data(Json(request): Json<DataRequest>) -> impl IntoResponse {
    let mut string_len = 0;
    let mut int_sum = 0;

    for item in &request.data {
        if let Value::String(s) = item {
            string_len += s.len();
        } else if let Value::Number(n) = item {
            int_sum += n.as_i64().unwrap_or(0);
        }
    }

    let response = DataResponse {
        string_len: string_len as i64,
        int_sum,
    };

    (StatusCode::OK, Json(response))
}

#[derive(Deserialize)]
pub struct DataRequest {
    data: Vec<serde_json::Value>,
}

#[derive(Serialize)]
pub struct DataResponse {
    string_len: i64,
    int_sum: i64,
}