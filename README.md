# Docker Klondike

## Mono based

- ```2.0.0```, ```2.0.0-1```, ```2.1.1```

[![Docker Pulls](https://img.shields.io/docker/pulls/athieriot/docker-klondike.svg)]() [![](https://images.microbadger.com/badges/image/athieriot/docker-klondike.svg)](http://microbadger.com/images/athieriot/docker-klondike "Get your own image badge on microbadger.com")

Docker container to run a Self Hosted version of [Klondike](https://github.com/themotleyfool/Klondike)

# Usage

## Getting Started

        docker run -it -d \
                   -p 8080:8080 \
                   --name klondike \
                   athieriot/docker-klondike

## Persist Package directory

        docker run -it -d \
                   -p 8080:8080 \
                   -v /path/to/packages/:/app/App_Data/Packages \
                   --name klondike \
                   athieriot/docker-klondike

## Override configuration            

        docker run -it -d \
                   -p 8080:8080 \
                   -v /path/to/Settings.config:/app/Settings.config \
                   -v /path/to/Web.config:/app/Web.config \
                   --name klondike \
                   athieriot/docker-klondike
