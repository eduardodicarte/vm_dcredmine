# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANT_FILE_VERSION = 2

Vagrant.configure(VAGRANT_FILE_VERSION) do |config|
   
  config.vm.box = "puppetlabs/centos-7.0-64-puppet"

  config.vm.define :dcredmine do |dcredmine|
  	dcredmine.vm.hostname = "dcredmine.globalcode.com.br"	
	dcredmine.vm.network "private_network", ip: "192.168.210.201"
  end

  config.vm.provision "puppet" do |puppet|
	  puppet.environment_path = "environments"
	  puppet.environment = "development"
  end
end
