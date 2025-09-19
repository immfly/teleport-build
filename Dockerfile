#FROM alpine:3.22.1
#FROM ubuntu:24.04
FROM scratch

WORKDIR /app
COPY build/* /app

ENTRYPOINT [ "/app/teleport" ]
RUN [ "start", "-c", "/etc/teleport/teleport.yaml" ]
