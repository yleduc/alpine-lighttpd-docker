FROM alpine:3.3

RUN apk add lighttpd

ADD lighttpd.conf /etc/lighttpd/

RUN lighttpd -t -f /etc/lighttpd/lighttpd.conf

ENTRYPOINT ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

