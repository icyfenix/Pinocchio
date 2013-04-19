require 'bundler'
Bundler.require
require './myapp'

use Rack::Static, :urls => ["/css", "/images", "/js"], :root => "public"

run App.new