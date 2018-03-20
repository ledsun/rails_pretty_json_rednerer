# Rails Pretty JSON Rednerer

This short little gem adds renderer that render prettify JSON responses as 'pretty_json'.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_pretty_json_rednerer'
```

And then execute:

    $ bundle

## Usage

This gem works automatically. Just add it to your Gemfile, bundle, and enjoy the pretty JSON!

You can use pretty_json renderer like so:

```rb
class StubController < ActionController::API
  def show
    render pretty_json: { key: 'value' }
  end
end
```

Return response in prettified JSON:

```json
{
  "key": "value"
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ledsun/rails_pretty_json_rednerer.
