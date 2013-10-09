include_recipe 'apt'
include_recipe 'git'
include_recipe 'python'

node.override['rvm']['default_ruby']                = 'ruby-2.0.0'
node.override['rvm']['vagrant']['system_chef_solo'] = '/opt/vagrant_ruby/bin/chef-solo'
include_recipe 'rvm::vagrant'
include_recipe 'rvm::system'
include_recipe 'rvm::gem_package'
