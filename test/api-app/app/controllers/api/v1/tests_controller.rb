module Api
  module V1
    class TestsController < ::ApplicationController
      respond_to :json

      def index
        p "WTF"
        respond_with('V1')
      end
    end
  end
end