#!/bin/sh

cd /vagrant/devilbox
docker-compose stop
docker-compose rm -f
docker-compose up -d httpd php mysql
