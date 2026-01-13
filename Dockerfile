FROM debian:stable-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY build/* /app

ENTRYPOINT [ "/app/teleport" ]
CMD [ "start", "-c", "/etc/teleport/teleport.yaml" ]
