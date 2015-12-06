# lighthttpd-docker

## Just to easily expose folder's content to the world

docker build -t lighthttpd .

docker run -d -v ~:/var/www/ -p 8080:80 lighthttpd
