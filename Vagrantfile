# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.7.4'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'frontend-standard-stack'
  config.vm.network :private_network, type: 'dhcp'

  if Vagrant.has_plugin?("vagrant-omnibus")
    config.omnibus.chef_version = '12.4.2'
  end

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      'recipe[frontend-standard-stack::default]'
    ]
  end
end
