# frozen_string_literal: true

require 'spec_helper'
require 'address_base_registry_geocoder/client'

describe AddressBaseRegistryGeocoder::Client do
  let(:base_url) { 'http://geocoder:3030' }
  let(:client) { described_class.new(base_url) }


  describe '#geocode' do
    let(:address) { '東京都　台東区　上野公園　７−７' }

    it 'is geocode response' do
      response = client.geocode(address)
      expect(response).to be_a(AddressBaseRegistryGeocoder::Responses::GeocodeResponse)
      # response.outputが、address から変わってることだけ判定したい
      expect(response.output).not_to eq(address)
    end

  end

end
