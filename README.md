# Double Or Nothing

Figure out the exact date when somebody will be twice your age.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'double_or_nothing'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install double_or_nothing

## Usage

```irb
require 'double_or_nothing'

alice = DoubleOrNothing::Person.new("2000-01-01")
bob = DoubleOrNothing::Person.new("1985-01-01")

DoubleOrNothing::Calculator.new(alice, bob).call
#=> #<Date: 2014-12-31 ((2457023j,0s,0n),+0s,2299161j)>

DoubleOrNothing::Calculator.new(alice, bob).difference
#=> (5478/1)
```

## Contributing

1. Fork it ( https://github.com/parndt/double_or_nothing/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
