require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FindThings
  class Application < Rails::Application
    config.load_defaults 7.1

    config.generators.system_tests = nil
    config.generators do |g|
      g.test_framework :rspec, view_specs: false,
                               controller_specs: false,
                               helper_specs: false,
                               routing_specs: false,
                               request_specs: false
    end

    config.autoload_lib(ignore: %w(assets tasks))

    extra_paths = [Rails.root.join('lib')]
    config.autoload_paths.concat(extra_paths)
    config.eager_load_paths.concat(extra_paths)

    config.i18n.default_locale = :'pt-BR'
    config.i18n.fallbacks = [:en]
    config.time_zone = 'Brasilia'
  end
end
