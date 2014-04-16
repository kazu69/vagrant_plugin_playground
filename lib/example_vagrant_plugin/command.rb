module ExampleVagrantPlugin
  class Command < Vagrant.plugin('2', 'command')
    def execute
      ops = OptionParser.new do |o|
        # overwrite banner
        o.banner = 'Usage: Vagrant free-memory [--help]'
      end

      argv = parse_options(ops)

      command = 'grep MemFree /proc/meminfo | awk "{print $2}"'

      with_target_vms(argv) do |machine|
        if machine.state.id != :running
          @env.ui.info "#{machine.name} is not running"
          next
        end

        machine.communicate.execute(command) do |type, data|
          @env.ui.info data
        end
      end

      return 0
    end
  end
end
