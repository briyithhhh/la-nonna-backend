# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
#require "cloudinary"

run Rails.application
Rails.application.load_server

#Cloudinary.config_from_url("cloudinary://212524798127239:33clEac02MyGIsZFaud3Sp-Os3Y@du7zs0x7r")

#Cloudinary.config do |config|
#    config.secure = true
#end