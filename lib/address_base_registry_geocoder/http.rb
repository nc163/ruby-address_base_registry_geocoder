# frozen_string_literal: true

require_relative "http_headers"

module AddressBaseRegistryGeocoder
  module HTTP
    include HTTPHeaders

    def uri_base=(uri)
      @uri_base = uri
    end

    def uri_base
      @uri_base
    end
  
    def get(uri)
      connection.get(uri) do |req|
        # req.headers = default_headers
      end
    end

    private

    def connection
      faraday = Faraday.new do |f|
        f.options[:timeout] = @request_timeout
        f.use MiddlewareErrors if @log_errors
        f.response :raise_error
        f.response :json
      end

      faraday
    end

  end
end