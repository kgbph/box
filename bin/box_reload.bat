@ECHO OFF

vagrant ssh -c "cd /vagrant/devilbox && docker-compose stop"
vagrant ssh -c "cd /vagrant/devilbox && docker-compose rm -f"
vagrant ssh -c "cd /vagrant/devilbox && docker-compose up -d httpd php mysql"
