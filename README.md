# OmniAuth Viadeo OAuth2 Strategy

[![Build Status](https://travis-ci.org/pierallard/omniauth-viadeo-oauth2.png?branch=master)](https://travis-ci.org/pierallard/omniauth-viadeo-oauth2)

A Viadeo OAuth2 strategy for OmniAuth.

For more details, read the Viadeo documentation: http://dev.viadeo.com/documentation/authentication/oauth-authentication/

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-viadeo-oauth2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-viadeo-oauth2

## Usage

Register your application with Viadeo to receive an API key: https://www.viadeo.com/secure/developer

This is an example that you might put into a Rails initializer at `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :viadeo, ENV['VIADEO_KEY'], ENV['VIADEO_SECRET']
end
```

You can now access the OmniAuth Viadeo OAuth2 URL: `/auth/viadeo`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
