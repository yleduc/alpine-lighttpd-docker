FROM alpine

MAINTAINER Sascha Muellner <smuellner@roland-tilgner.de>

LABEL version="1.0.0"

LABEL description="The lighttpd web server exposed on port 80"

RUN apk add --no-cache lighttpd || \
    (sed -i -e 's/dl-cdn/dl-4/g' /etc/apk/repositories && apk add --no-cache lighttpd)

ADD lighttpd.conf /etc/lighttpd/

RUN cat /etc/lighttpd/lighttpd.conf

RUN lighttpd -t -f /etc/lighttpd/lighttpd.conf

RUN echo "Lighttpd is running..." > /var/www/index.html

EXPOSE 80

ENTRYPOINT ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

