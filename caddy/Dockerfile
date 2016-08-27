FROM alpine:latest
MAINTAINER Nathaniel Ringo <remexre@gmail.com>

RUN apk add --no-cache --update curl tar
RUN curl "https://caddyserver.com/download/build?os=linux&arch=amd64&features=" | \
	tar --no-same-owner -xzC /usr/bin/ caddy && \
	chmod 0755 /usr/bin/caddy
EXPOSE 80 443

ADD Caddyfile /etc/Caddyfile
ENTRYPOINT ["/usr/bin/caddy", "--conf", "/etc/Caddyfile", "-ca", "https://acme-staging.api.letsencrypt.org/directory"]
