require 'rails/railtie'

module Diversion
  class Railtie < Rails::Railtie
    initializer 'diversion.configure' do |app|
      ActionDispatch::Routing::Mapper.send :include, Diversion::Routing
    end
  end
end