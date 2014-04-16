require "example_vagrant_plugin/version"

module ExampleVagrantPlugin
  class Plugin < Vagrant.plugin('2')
    name 'vagrant plugin'

    action_hook('example_vagrant_plugin', 'machine_action_up') do |hook|
      require_relative 'example_vagrant_plugin/custom_action'
      hook.prepend(CustomAction)
    end

    config('apt_get', :provisioner) do
      require_relative 'example_vagrant_plugin/provisioner_config'
      Provisioner_Config
    end

    provisioner 'apt-get' do
      require_relative 'example_vagrant_plugin/provisioner'
      Provisioner
    end

    command 'free-memory' do
      require_relative 'example_vagrant_plugin/command'
      Command
    end

    config 'custom_key' do
      require_relative 'example_vagrant_plugin/config'
      Config
    end

    def merge(other)
      super.tap do |result|
        # 新旧値の取得
        older = @value
        newer = other.instance_variable_get(:@value)

        # カスタムのマージ処理を気にするのは両方の値が設定されているときだけ
        if newer != UNSET_VALUE && older != UNSET_VALUE
          if nerwer.to_i > older.to_i
            result.instance_variable_set(:@value, newer)
          else
            result.instance_variable_set(:@value, older)
          end
        end
      end
    end

    def validate(machine)
      errors = []
      if !@value
        errors << 'Value must be set.'
      end
      return { 'my key' => errors }
    end

  end
end
