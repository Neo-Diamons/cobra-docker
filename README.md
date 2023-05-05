## Cobra Docker

#### Requirements
____

You need to install `docker`, to build correctly epitest-docker image

#### Cobra-Docker
____

This repository contains the Dockerfile to build the image of Cobra.

Build the image:
```bash
docker build -t cobra-docker .
```

Run the image:
```bash
docker run -it --rm -v $(pwd):/home/project -w /home/project cobra-docker:latest /bin/zsh
```
