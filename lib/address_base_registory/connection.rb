# frozen_string_literal: true

require 'faraday'

module AddressBaseRegistory
  class Connection
    def self.build(base_url)
      Faraday.new(url: base_url) do |conn|
        conn.request :json
        conn.response :json, parser_options: { symbolize_names: true }
        conn.adapter Faraday.default_adapter
      end
    end
  end
end