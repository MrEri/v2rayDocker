FROM v2fly/v2fly-core:latest


COPY config.json ~/config.json

#RUN v2ray run -c ~/config.json
