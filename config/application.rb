require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LaNonna
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # config.active_record.encryption.key_provider = ActiveRecord::Encryption::EnvelopeEncryptionKeyProvider.new

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.

    # Encryption keys to use for encrypting sensitive data, like Credit Cards... in password of users, use has_secure_password of Bcrypt library.
    config.active_record.encryption.primary_key = ENV["primary_key"]
    config.active_record.encryption.deterministic_key = ENV["deterministic_key"]
    config.active_record.encryption.key_derivation_salt = ENV["key_derivation_salt"]

    config.time_zone = "Caracas"
    # config.eager_load_paths << Rails.root.join("extras")
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Flash
    config.middleware.use Rack::MethodOverride
    config.middleware.use ActionDispatch::Session::CookieStore, {:key=>"_la_nonna_session"}

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end
