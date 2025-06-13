# frozen_string_literal: true

require 'faraday'
require 'json'
require_relative 'connection'
require_relative 'responses'
require_relative 'http_headers'
require_relative 'error_handler'

module AddressBaseRegistoryGeocoder
  class Client

    def initialize
      @connection = Connection.build(AddressBaseRegistoryGeocoder.configuration.url)
    end

    # 
    def geocode(address)
      headers = HTTPHeaders.auth_headers(API_KEY)
      response = @connection.get('/geocode', { address: address }, headers)

      if response.success?
        AddressBaseRegistoryGeocoder::Responses::GeocodeResponse.new(response.body[:result])
      else
        handle_error(response)
      end
    end

    private

    # エラーハンドリング
    def handle_error(response)
      raise AddressBaseRegistoryGeocoder::ErrorHandler.new(response.status, response.body)
    end
  end
end