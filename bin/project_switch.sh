#!/bin/sh

cp /vagrant/data/$1.env /vagrant/devilbox/.env
/vagrant/bin/box_reload.sh
