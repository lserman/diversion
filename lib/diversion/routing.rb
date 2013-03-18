module Diversion
  module Routing
    def version(*args, &block)
      @options = args.extract_options!
      @version = args.first
      scope module: route_module, constraints: Diversion::Constraints.new(@version, default?), &block
    end

  private

    def route_module
      @options[:module] || :"v#{@version}"
    end

    def default?
      @options[:default] || false
    end
  end
end