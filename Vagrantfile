# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant configuration
Vagrant.configure("2") do |config|

  # Set base box
  config.vm.box = "centos/7"

  # Sync folder
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  # Configure forwarded ports
  config.vm.network "forwarded_port", guest: 53, host: 53, protocol: "tcp"
  config.vm.network "forwarded_port", guest: 53, host: 53, protocol: "udp"
  config.vm.network "forwarded_port", guest: 80, host: 80

  # Configure private network
  # config.vm.network "private_network", ip: "192.168.100.100"

  # Configure public network
  # config.vm.network "public_network", use_dhcp_assigned_default_route: true

  # Define plugins
  config.vagrant.plugins = [
    "vagrant-docker-compose",
    "vagrant-vbguest"
  ]

  # Virtualbox configuration
  config.vm.provider "virtualbox" do |vb|
    # Disable audio
    vb.customize ["modifyvm", :id, "--audio", "none"]
  end

  # Provision docker
  config.vm.provision :docker
  config.vm.provision :docker_compose

  # Provision shell
  config.vm.provision "shell",
    path: "provisioner/script.sh"
end
