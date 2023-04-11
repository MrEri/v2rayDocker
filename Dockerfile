FROM v2fly/v2fly-core:latest


COPY config.json ~/config.json

RUN /usr/bin/v2ray run -c ~/config.json
