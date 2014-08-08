# Sample app for Viadeo OAuth2 Strategy
# Make sure to setup the ENV variables _KEY and VIADEO_SECRET
# Run with "bundle exec rackup"

require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-viadeo-oauth2'

class App < Sinatra::Base
  get '/' do
    redirect '/auth/viadeo'
  end

  get '/auth/:provider/callback' do
    content_type 'application/json'
    MultiJson.encode(request.env['omniauth.auth'])
  end

  get '/auth/failure' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end
end

use Rack::Session::Cookie, :secret => 'change_me'

use OmniAuth::Builder do
  provider :viadeo, ENV['_KEY'], ENV['VIADEO_SECRET']
end

run App.new
