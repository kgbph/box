@echo off
vagrant plugin update vagrant-hostsupdater
vagrant plugin update vagrant-docker-compose
vagrant plugin update vagrant-vbguest
vagrant reload --provision
