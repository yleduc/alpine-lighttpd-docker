# alpine-lighttpd-docker

### Just to easily expose folder's content to the world

docker build -t alpine-lighttpd .

docker run -d -v ~:/var/www/ -p 8080:80 alpine-lighttpd

[![](https://badge.imagelayers.io/smuellner/alpine-lighttpd:latest.svg)](https://imagelayers.io/?images=smuellner/alpine-lighttpd:latest 'Get your own badge on imagelayers.io')
