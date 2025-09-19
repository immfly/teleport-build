FROM debian:stable-slim

WORKDIR /app
COPY build/* /app

ENTRYPOINT [ "/app/teleport" ]
CMD [ "start", "-c", "/etc/teleport/teleport.yaml" ]
