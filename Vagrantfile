# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'precise64cloudimagesubuntu'
  config.vm.box_url = 'http://cloud-images.ubuntu.com/precise/current/precise-server-cloudimg-vagrant-amd64-disk1.box'

  config.cache.auto_detect = true
  config.cache.scope = :machine

  config.vm.provision :shell, inline: 'gem install chef --no-rdoc --no-ri'

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'apt'
    chef.add_recipe 'git'
    chef.add_recipe 'python'
    chef.add_recipe 'rvm::vagrant'
    chef.add_recipe 'rvm::system'
    chef.add_recipe 'rvm::gem_package'

    chef.json = {
      rvm: {
        default_ruby: 'ruby-2.0.0',
        vagrant: { system_chef_solo: '/opt/vagrant_ruby/bin/chef-solo' }
      }
    }
  end
end
