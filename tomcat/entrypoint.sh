#!/usr/bin/env bash
set -e
git clone $REPO app
cd app
rm -rf /usr/local/tomcat/webapps/ROOT/*
cp -r webapp/ /usr/local/tomcat/webapps/ROOT/
./catalina.sh run