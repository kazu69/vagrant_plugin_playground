module ExampleVagrantPlugin
  class Provisioner < Vagrant.plugin('2', 'provisioner')
    def provision
      # package = ['htop', 'curl']
      # command = "apt-get install -y #{package.join(' ')}"
      command = "apt-get install -y #{@config.packages.join(' ')}"

      @machine.communicate.sudo(command) do |type, date|
        @machine.env.ui.info(data.chomp, prefix: false)
      end
    end

    def configure(root_config)
      root_config.vm.synced_folder './files', '/files/on/guest'
    end
  end
end
