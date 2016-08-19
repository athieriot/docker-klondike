FROM mono:4.4

ENV KLONDIKE_VERSION=v2.1.1
ENV KLONDIKE_BUILD=2.1.1.22ea5477-build156

RUN apt-get update && \
    apt-get install wget unzip && \
    rm -rf /var/cache/apt/*

WORKDIR /app

RUN wget https://github.com/themotleyfool/Klondike/releases/download/${KLONDIKE_VERSION}/Klondike.${KLONDIKE_BUILD}.zip -O /app/Klondike.${KLONDIKE_BUILD}.zip && \
    unzip *.zip

EXPOSE 8080

COPY Settings.config /app/Settings.config

CMD ["mono", "./bin/Klondike.SelfHost.exe", "--interactive", "--port=8080"]
