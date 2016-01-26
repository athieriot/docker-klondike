# Docker Klondike

Docker container to run a Self Hosted version of [Klondike](https://github.com/themotleyfool/Klondike)

# Usage

## Getting Started

        docker run -it -d \
                   -p 8080:8080 \
                   --name klondike
                   athieriot/docker-klondike

## Persist Package directory

        docker run -it -d \
                   -p 8080:8080 \
                   -v /path/to/packages/:/app/App_Data/Packages
                   --name klondike \
                   athieriot/docker-klondike

## Override configuration            

        docker run -it -d \
                   -p 8080:8080 \
                   -v /path/to/Settings.config:/app/Settings.config \
                   -v /path/to/Web.config:/app/Web.config \
                   --name klondike \
                   athieriot/docker-klondike
