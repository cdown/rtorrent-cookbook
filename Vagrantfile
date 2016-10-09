# https://github.com/berkshelf/vagrant-berkshelf/issues/305
module VagrantPlugins
  module Berkshelf
    module Action
      class Check < Base
        send(:remove_const, :BERKS_REQUIREMENT) if const_defined?(:BERKS_REQUIREMENT)
        BERKS_REQUIREMENT = ">= 4.0"
      end
    end
  end
end

VAGRANTFILE_API_VERSION = '2'
Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.box = 'bento/debian-7.8'
  config.vm.hostname = 'rtorrent-vagrant'
  config.vm.network :private_network, type: 'dhcp'

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      'recipe[rtorrent::default]'
    ]
  end
end
