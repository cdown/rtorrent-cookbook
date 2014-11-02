# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'
Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = 'rtorrent-vagrant'
  config.omnibus.chef_version = :latest

  config.vm.box = 'chef/debian-7.6'

  config.vm.network :private_network, type: 'dhcp'

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      'recipe[rtorrent::default]'
    ]
  end
end
