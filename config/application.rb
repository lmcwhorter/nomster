require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nomster
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Added the fonts path February 12, 2017
    config.assets.paths << "#{Rails.root}/app/assets/fonts"

    #Precompile additional assets noted February 12, 2017
    config.assets.precompile += %w( .svg .eot .woff .tff )

  end
end
