FROM ubuntu:latest
MAINTAINER Nathaniel Ringo <remexre@gmail.com>

ADD domino-templates /usr/bin/domino-templates
ADD templates.toml /etc/domino/templates.toml

EXPOSE 80
CMD ["/usr/bin/domino-templates", "/etc/domino/templates.toml"]
