@ECHO OFF

vagrant ssh -c "cd /vagrant/devilbox && docker-compose up -d httpd php mysql"
