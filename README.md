# alpine-lighttpd-docker

### Just to easily expose folder's content to the world

docker build -t alpine-lighttpd .

docker run -d -v ~:/var/www/ -p 8080:80 alpine-lighttpd
