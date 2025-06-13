# frozen_string_literal: true

require "address_base_registory_geocoder/client"
require "address_base_registory_geocoder/version"

#
module AddressBaseRegistoryGeocoder
  class Error < StandardError; end
  class ConfigurationError < Error; end
  class AuthenticationError < Error; end

  class Configuration
    attr_accessor :scheme
    attr_accessor :host
    attr_accessor :port

    def initialize
      @scheme = 'http'
      @host = '127.0.0.1'
      @port = 3002
    end

    def url
      "#{@scheme}://#{@host}:#{@port}"
    end

    def uri 
      URI.parse(url)
    end
  end

  class << self
    attr_writer :configuration
    
    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end


end
