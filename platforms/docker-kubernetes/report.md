# Docker & Kubernetes Assessment Report

> [!TIP]
> Use this document to explain your design choices, optimisations and any challenges you faced.

## Dockerfile

I first read through the source code and importantly the package.json file to see what was required for the docker file. I decided to create a Docker file that is multi stage, firstly installing all dependencies and compiling all the ts files. After that, the second part only reinstalls production dependeinces and gets rid of things such as tsc, tsx and lint for smaller overall size. I had some trouble with running the docker as whilst I was familiar with such files I wasn't specifically familiar with writing docker files, as a result I had to look up that it needed to be named specifically Dockerfile in order to run. As can be seen, I decided use node:24-alpine in order to further keep the image small. I also create a non-root user for runtime as I am aware that is common security practice for things of this nature. I wasn't familiar with pnpm, only npm, so I needed to look up and see how it functioned, though it seems to be a relatively straightforward package manager so it wasn't too much of a struggle. 

### Forked repository

## Kubernetes

First and foremost I installed minikube as per the recommendation, and then as a result also kubectl. I read the official Navidrome docs and found these important things:

- It listens on port 4533 specifically
- It stores data in /data
- It reads music from /music

Along with the docker example which told me:

- The container image (deluan/navidrome) 
- Required port mapping

This took quite a while, as I also then read the documentation for kubectl and how to get it all running, along with the relevant terminology. I had to look up what all of the docker compose concepts actually do (services, image, volumes, etc) before tranlsating it to be Kubernetes compatible. I read the Kubernetes documentation here https://kubernetes.io/docs/home/ and studied what pods were, how deployment and services operated, what the equivalent of volumes were, and how environment variables transfered. I additionally read this https://docs.docker.com/guides/kube-deploy/ to help with my translation. I understand that there was a kompose convert command, however I decided to instead manually translate in order to understand how this thing operated fully, luckily again given docker has a guide on this, it didn't prove ridiculously difficult, and can be found under `navidrome.yaml` in the /navidrome directory. From there all I had to do was apply it and then forward the service port to my machine and open the localhost on my browser. The hardest part was easily reading through all of this documentation and I definitely couldn't from memory translate anything however with the documentation up it didn't prove to be too difficult once I figured out where to look.
