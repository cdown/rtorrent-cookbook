VAGRANTFILE_API_VERSION = '2'
Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.box = 'chef/debian-7.6'
  config.vm.hostname = 'rtorrent-vagrant'
  config.vm.network :private_network, type: 'dhcp'

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      'recipe[rtorrent::default]'
    ]
  end
end
