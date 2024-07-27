# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "nginx" do |nginx|
    nginx.vm.box = "ubuntu/lunar64"
    nginx.vm.hostname = "web-server"
    nginx.vm.network "private_network", ip: "192.168.57.25"
    nginx.vm.provision "shell", path: "provision.sh"

    nginx.vm.provider "virtualbox" do |vb|
      vb.name = "webserver"
      vb.memory = 400
      vb.cpus = 1
    end
  end
end
