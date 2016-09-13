# alpine-lighttpd-docker

### Just to easily expose folder's content to the world

docker build -t alpine-lighttpd .

docker run -d -v ~:/var/www/ -p 8080:80 alpine-lighttpd

[![](https://images.microbadger.com/badges/image/smuellner/alpine-lighttpd.svg)](http://microbadger.com/images/smuellner/alpine-lighttpd "Get your own image badge on microbadger.com")

[![](https://images.microbadger.com/badges/version/smuellner/alpine-lighttpd.svg)](http://microbadger.com/images/smuellner/alpine-lighttpd "Get your own version badge on microbadger.com")
