# Docker & Kubernetes Assessment Report

> [!TIP]
> Use this document to explain your design choices, optimisations and any challenges you faced.

## Dockerfile

I first read through the source code and importantly the package.json file to see what was required for the docker file. I decided to create a Docker file that is multi stage, firstly installing all dependencies and compiling all the ts files. After that, the second part only reinstalls production dependeinces and gets rid of things such as tsc, tsx and lint for smaller overall size. I had some trouble with running the docker as whilst I was familiar with such files I wasn't specifically familiar with writing docker files, as a result I had to look up that it needed to be named specifically Dockerfile in order to run. As can be seen, I decided use node:24-alpine in order to further keep the image small. I also create a non-root user for runtime as I am aware that is common security practice for things of this nature. I wasn't familiar with pnpm, only npm, so I needed to look up and see how it functioned, though it seems to be a relatively straightforward package manager so it wasn't too much of a struggle. 

### Forked repository

## Kubernetes

<!-- TODO: Document your process for deploying Navidrome on Kubernetes -->
