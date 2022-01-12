# Trestle Model Helper (trestle-resource_helpers)

> Add helpers for Trestle resources


## Getting Started

These instructions assume you have a working Trestle application. To integrate trestle-resource_helpers, first add it to your application's Gemfile:

```ruby
gem 'trestle-resource_helpers'
```

Run `bundle install`, and then restart your Rails server.

To add a description block within an admin resource, use the `resource_description` method:

```ruby
Trestle.resource(:articles) do
  resource_description do
    'An article is a super dupper class to add some content to the blog!'
  end
end
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
