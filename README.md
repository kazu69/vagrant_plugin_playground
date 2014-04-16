# ExampleVagrantPlugin

My first vagrant plugin

## Installation

Add this line to your application's Gemfile:

    gem 'example_vagrant_plugin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install example_vagrant_plugin

## Usage

```
git clone git@github.com:kazu69/vagrant_plugin_playground.git
cd vagrant_plugin_playground
bundle install
bundle exec rake build
vagrant plugin install ./pkg/example_vagrant_plugin-0.0.1.gem
```

## Contributing

1. Fork it ( http://github.com/kazu69/vagrant_plugin_playground/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
