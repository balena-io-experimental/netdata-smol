FROM alpine:3.12.0
RUN apk update
RUN apk add netdata --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
