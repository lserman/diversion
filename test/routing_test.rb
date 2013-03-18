require 'test_helper'

class DiversionTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    ApiApp::Application
  end

  def setup
    app.routes.clear!
  end

  def test_one_version_with_defaults
    app.routes.draw do
      namespace :api, defaults: { format: 'json' } do
        version 1, default: true do
          resources :tests
        end
      end
    end

    p app.routes.recognize_path('/api/tests')
    headers = { "HTTP_ACCEPT" => "application/api.v1" }
    get '/api/v1/tests', nil, headers
    assert_equal 'V1', last_response.body
  end

  # test "one version with defaults" do
  #   headers = { "HTTP_ACCEPT" => "application/api.v1" }
  #   ApiApp::Application.routes.draw do
  #     namespace :api do
  #       version 1, default: true do
  #         resources :tests
  #       end
  #     end
  #   end

  #   get '/tests', nil, headers
  #   assert_equal 'V1', response.body
  # end
end