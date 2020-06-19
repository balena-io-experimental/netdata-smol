FROM alpine:3.12.0
# Can prolly remove this one, but duplicating history
RUN apk update
RUN sed -i -e 's/v[[:digit:]]\..*\//edge\//g' /etc/apk/repositories && cat /etc/apk/repositories
RUN apk update
RUN apk add netdata --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
