require 'action_controller/railtie'
require 'diversion/railtie'

module ApiApp
  class Application < Rails::Application
    config.secret_token = ":)"
    config.root = File.expand_path("../../", __FILE__)
  end
end