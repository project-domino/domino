#!/bin/bash

set -e;

go get -v github.com/project-domino/go-domino/cmd/domino-api \
	github.com/project-domino/go-domino/cmd/domino-templates;
cp "${GOPATH}/bin/domino-api" api/domino-api;
cp "${GOPATH}/bin/domino-templates" templates/domino-templates;
docker-compose build;
docker-compose up -d;
docker-compose logs -ft;
