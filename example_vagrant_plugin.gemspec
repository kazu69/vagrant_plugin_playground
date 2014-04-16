# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'example_vagrant_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = "example_vagrant_plugin"
  spec.version       = ExampleVagrantPlugin::VERSION
  spec.authors       = ["AUTHOR"]
  spec.email         = ["EMAIL"]
  spec.summary       = %q{example vagrant plugin}
  spec.description   = %q{example vagrant plugin}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
