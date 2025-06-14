# frozen_string_literal: true

require "address_base_registry_geocoder/client"
require "address_base_registry_geocoder/version"

#
module AddressBaseRegistryGeocoder
  class Error < StandardError; end
  class ConfigurationError < Error; end
  class AuthenticationError < Error; end

  class Configuration
    attr_accessor :url

    def initialize
      @url = 'http://127.0.0.1:3000'
    end

    def url
      @url
    end

    def uri 
      @uri ||= URI.parse(url)
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
