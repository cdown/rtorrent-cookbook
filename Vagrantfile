module VagrantPlugins
  module Berkshelf
    module Action
      # https://github.com/berkshelf/vagrant-berkshelf/issues/305
      class Check < Base
        if const_defined?(:BERKS_REQUIREMENT)
          send(:remove_const, :BERKS_REQUIREMENT)
        end
        BERKS_REQUIREMENT = '>= 4.0'.freeze
      end
    end
  end
end

VAGRANTFILE_API_VERSION = '2'.freeze
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
