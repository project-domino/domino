FROM ubuntu:latest
MAINTAINER Nathaniel Ringo <remexre@gmail.com>

ADD domino-api /usr/bin/domino-api
ADD api.toml /etc/domino/api.toml

EXPOSE 80
CMD ["/usr/bin/domino-api", "/etc/domino/api.toml"]
