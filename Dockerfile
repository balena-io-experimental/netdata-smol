FROM alpine:3.12.0
RUN apk update
RUN apk add netdata --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
# Not sure why the chown doesn't appear to be working -- poor cache or somethign?
# But when I chown it within the container, it seems to work
RUN mkdir /var/lib/netdata && \
	chown netdata:root /var/lib/netdata && \
	chmod 770 /var/lib/netdata
