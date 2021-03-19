# Eachtility

Variations of the "each" command


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eachtility'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install eachtility

## Usage

It returns on the second argument the previous item of the array:

```ruby
i = [1, 'Two', 3]
i.each_with_previous do |item, previous|
	puts "#{item} - #{previous}"
end

# Return
# 
# 1, nil
# "Two", 1
# 3, "Two"
```

It returns on the second argument the next item of the array:
```ruby
[1,2,3].each_with_next { |a, b| puts "#{a} - #{b}" }

# Return
# 
# => [[1, 2], [2, 3], [3, nil]]
```

It returns on the second argument if is first item of the array:
```ruby
[1,2,3].each_with_is_first { |item, is_first| puts "#{item} - #{first}" }

# Return
# 
# 1 - true
# 2 - false
# 3 - false
```

You can also use:

```ruby
i = Model.limit(10)

i.each_with_index_and_previous { |item, index, previous| ... }

i.each_with_index_and_next { |item, index, next| ... }

i.each_with_previous_and_next { |item, previous, next| ... }

i.each_with_index_previous_and_next { |item, index, previous, next| ... }

i.each_with_is_last { |item, is_last| ... }

i.each_with_is_first_and_last { |item, is_first, is_last| ... }
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cbonfa/eachtility.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
