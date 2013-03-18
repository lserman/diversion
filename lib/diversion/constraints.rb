module Diversion
  class Constraints
    def initialize(version, default)
      @version = version
      @default = default
    end

    def matches?(request)
      @default || request.headers['Accept'].include?(matching_header)
    end

  private

    def matching_header
      "application/api.v#{@version}"
    end
  end
end