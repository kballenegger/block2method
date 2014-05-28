# Block2Method

Converts a block to an unbound method. This is useful for more binding a block
to an object, so that it can be executed with a different `self`.

```ruby
method = Block2Method do
  puts self[:hello]
end
method.bind({hello: 'World!'}).call
```


## Installation

Add this line to your application's Gemfile:

    gem 'block2method'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install block2method

## Contributing

1. Fork it ( https://github.com/[my-github-username]/block2method/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
