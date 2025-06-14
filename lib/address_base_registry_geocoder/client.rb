# frozen_string_literal: true

require 'faraday'
require 'json'
require_relative 'responses'
require_relative 'http'
require_relative 'error_handler'

module AddressBaseRegistryGeocoder
  class Client
    include AddressBaseRegistryGeocoder::HTTP

    def initialize(uri_base = nil)
      self.uri_base = uri_base.nil? ? AddressBaseRegistryGeocoder.configuration.uri 
                               : URI.parse(uri_base)
    end

    # 
    def geocode(address)
      response = get uri(path: '/geocode', parameters: { address: address })
      
      if response.success?
        AddressBaseRegistryGeocoder::Responses::GeocodeResponse.new(response.body)
      else
        handle_error(response)
      end
    end

    private

    def uri(path: , parameters: )
      uri_base.merge(path).tap do |uri|
        uri.query = URI.encode_www_form(parameters) if parameters
      end
    end

    # エラーハンドリング
    def handle_error(response)
      raise AddressBaseRegistryGeocoder::ErrorHandler.new(response.status, response.body)
    end
  end
end