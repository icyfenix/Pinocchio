require 'bundler'
Bundler.require
require './myapp.rb'

use Rack::Static, :urls => ["/css", "/images", "/js"], :root => "public"

run App.new
puts "it's running"