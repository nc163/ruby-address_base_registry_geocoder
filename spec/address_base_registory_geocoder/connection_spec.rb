# frozen_string_literal: true

require "spec_helper"

describe AddressBaseRegistoryGeocoder::Connection do
  describe '.build' do
    let(:base_url) { 'http://localhost:3030/' }

    it 'returns a Faraday connection with the correct base URL' do
      connection = described_class.build(base_url)
      expect(connection.url_prefix.to_s).to eq(base_url)
    end

  end
end
