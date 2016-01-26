FROM mono:4.2

ENV KLONDIKE_VERSION=v2.0.0
ENV KLONDIKE_BUILD=2.0.0.26c3df25-build144

RUN apt-get update && \
    apt-get install wget unzip

WORKDIR /app

RUN wget https://github.com/themotleyfool/Klondike/releases/download/${KLONDIKE_VERSION}/Klondike.${KLONDIKE_BUILD}.zip -O /app/Klondike.${KLONDIKE_BUILD}.zip && \
    unzip *.zip

EXPOSE 8080

COPY Settings.config .

CMD ["mono", "./bin/Klondike.SelfHost.exe", "--interactive", "--port=8080"]
