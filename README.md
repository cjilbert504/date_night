# DateNight

Friendly ways to format dates. Instead of looking up strftime options all the time like I do :)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'date_night'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install date_night

## Usage

```ruby
Time.now.mm_dd_yyyy.dashed
#=> "12-23-2021"

Time.now.mm_dd_yy.slashed
#=> "12/23/21"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/date_night. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/date_night/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DateNight project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/date_night/blob/master/CODE_OF_CONDUCT.md).
