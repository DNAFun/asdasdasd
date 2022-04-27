FROM alpine:latest

ADD entrypoint.sh /opt/entrypoint.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/entrypoint.sh
RUN setenforce 0

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
