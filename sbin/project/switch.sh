#!/bin/sh

cp /vagrant/data/$1.env /vagrant/devilbox/.env
/vagrant/sbin/box/reload.sh
