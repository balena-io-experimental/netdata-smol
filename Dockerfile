FROM alpine:3.7 as build
ADD ./netdata-latest.gz.run /opt/
RUN chmod 755 /opt/netdata-latest.gz.run
RUN /opt/netdata-latest.gz.run --quiet --accept --noprogress --nox11
RUN rm /opt/netdata-latest.gz.run

FROM alpine:3.7 as run
COPY --from=build /etc/passwd /etc/passwd
COPY --from=build /etc/group /etc/group
COPY --from=build /etc/shadow /etc/shadow
COPY --from=build /opt/netdata /opt/netdata
