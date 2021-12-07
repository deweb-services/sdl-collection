#!/usr/bin/env bash
set -e
git clone $REPO app
cd app
go mod download
go build $PATH_TO_MAIN
chmod 777 main
./main