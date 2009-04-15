$:.unshift File.dirname(__FILE__)

require 'sinatra'
require 'site.rb'

set :environment, 'production'

run Sinatra::Application
