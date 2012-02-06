require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'rubygems'
require 'sinatra'
require 'rack/test'
require 'spec'
require 'spec/autorun'
require 'spec/interop/test'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

module MyTestMethods
  def app
    Sinatra::Application
  end
end

Spec::Runner.configure do |config|
  config.include Rack::Test::Methods
  config.include MyTestMethods
end

