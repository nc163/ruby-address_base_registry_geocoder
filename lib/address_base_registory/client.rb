# frozen_string_literal: true

require 'faraday'
require 'json'
require_relative 'connection'
require_relative 'responses'
require_relative 'http_headers'
require_relative 'error_handler'

module AddressBaseRegistory
  class Client

    def initialize
      @connection = Connection.build(AddressBaseRegistory.configuration.url)
    end

    # 
    def geocode(address)
      headers = HTTPHeaders.auth_headers(API_KEY)
      response = @connection.get('/geocode', { address: address }, headers)

      if response.success?
        AddressBaseRegistory::Responses::GeocodeResponse.new(response.body[:result])
      else
        handle_error(response)
      end
    end

    private

    # エラーハンドリング
    def handle_error(response)
      raise AddressBaseRegistory::ErrorHandler.new(response.status, response.body)
    end
  end
end