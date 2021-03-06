# require_relative 'boot' -- Line originally generated by program, commented out Feb 12, 2017 to fix heroku push problem; new line introduced below

require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
# Bundler.require(*Rails.groups) -- Line originally generated by program, commented out Feb 12, 2017 to fix heroku push problem; new line introduced below
Bundler.require(:default, Rails.env)

module Nomster
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Added the fonts path February 12, 2017
    config.assets.paths << "#{Rails.root}/app/assets/fonts"

    config.assets.precompile += %w( .svg .eot .woff .woff2 .ttf )

  end
end
