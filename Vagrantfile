# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'precise64cloudimagesubuntu'
  config.vm.box_url = 'http://cloud-images.ubuntu.com/precise/current/precise-server-cloudimg-vagrant-amd64-disk1.box'

  config.cache.auto_detect = true
  config.cache.scope = :machine

  config.vm.provision :shell, inline: 'gem install chef --no-rdoc --no-ri'

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = [".", "./cookbooks"]

    chef.add_recipe 'devenv-wrapper-cookbook'
  end
end
