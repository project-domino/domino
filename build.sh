#!/bin/bash

set -e;

go get github.com/project-domino/domino-go/cmd/domino-api \
	github.com/project-domino/domino-go/cmd/domino-templates;
cp "${GOPATH}/bin/domino-api" api/domino-api;
cp "${GOPATH}/bin/domino-templates" templates/domino-templates;
docker-compose build;
docker-compose up -d;
docker-compose logs -ft;
