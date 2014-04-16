Vagrant.require_plugin 'example_vagrant_plugin'

Vagrant::Config.run do |config|
  config.custom_key = 1
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  config.vm.box = 'precise64'
  config.vm.provision 'apt-get', package: ['htop']
end
