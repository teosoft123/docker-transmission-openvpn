# use it when you need a proxy
docker run -d --name=nginx --link xm-ovpn:transmission -p 8080:8080 teosoft/nginx
