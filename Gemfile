source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Rails Admin to provides an easy-to-user interface to managing data
gem 'rails_admin'

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# To add JWT Auth
gem "jwt"

# Use figaro to manage environment variables
gem "figaro"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem 'bcrypt'#, '~> 3.1.7'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

gem "annotate"

# Sentry to report bugs
gem "sentry-ruby"
gem "sentry-rails"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"

# Rolify to add roles
gem "rolify"

# Use to support SASS in Rails Application
gem "sassc-rails"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]

  # Use to seed database with fake data
  gem "faker", "~> 2.23"
end

group :development do
  # Use to generate Entity - Relation Diagram
  gem "rails-erd"

  # Use to generate UML Diagram for each model 
  gem 'railroady'

  gem 'letter_opener'
  
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem "cancancan", "~> 3.4"

gem 'rails-healthcheck'

gem 'jsonapi-serializer'
gem "graphiti", "~> 1.3"

gem "twilio-ruby", "~> 5.73"
