#!/bin/sh

ls -1 /vagrant/data | sed -e 's/\..*$//'
