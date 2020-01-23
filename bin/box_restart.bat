@ECHO OFF

vagrant ssh -c "cd /vagrant/devilbox && docker-compose restart"
