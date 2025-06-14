# frozen_string_literal: true

module AddressBaseRegistryGeocoder
  module HTTPHeaders
    def self.default_headers
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    def self.auth_headers(api_key)
      default_headers.merge('Authorization' => "Bearer #{api_key}")
    end
  end
end