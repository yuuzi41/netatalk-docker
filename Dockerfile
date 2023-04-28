FROM alpine:3.17

RUN apk add --update netatalk tini && rm -rf /var/cache/apk/*

EXPOSE 548

CMD ["/sbin/tini", "/usr/sbin/netatalk", "-d"]

