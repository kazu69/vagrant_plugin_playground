module ExampleVagrantPlugin
  class ProvisionerConfig < Vagrant.plugin('2', 'config')
    attr_accessor :package

    def initialize do
      super
      @packages = UNSET_VALUE
    end

    def finalize!
      @packages = [] if @value = UNSET_VALUE
    end
  end
end
