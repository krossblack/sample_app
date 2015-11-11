# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.1"
  config.ssh.insert_key = false

  config.vm.define :web do |web|
    web.vm.network "private_network", ip: "192.168.34.40"
    web.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
  config.vm.define :batch do |batch|
    batch.vm.network "private_network", ip: "192.168.34.41"
    batch.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
end
