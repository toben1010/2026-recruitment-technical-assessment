# Docker & Kubernetes Assessment Report

> [!TIP]
> Use this document to explain your design choices, optimisations and any challenges you faced.

## Dockerfile

I decided to create a Docker file that is multi stage, firstly installing all dependencies and compiling all the ts files. After that, the second part only reinstalls production dependeinces and gets rid of things such as tsc, tsx and lint for smaller file size. 
<!-- TODO: (Optional) Explain any specific goals or design decisions -->

### Forked repository

`https://github.com/toben1010/academic-calendar-api`

## Kubernetes

<!-- TODO: Document your process for deploying Navidrome on Kubernetes -->
