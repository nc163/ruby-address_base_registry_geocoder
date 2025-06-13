# # frozen_string_literal: true

# require 'spec_helper'
# require 'address_base_registory_geocoder/client'

# describe AddressBaseRegistoryGeocoder::Client do
#   let(:base_url) { 'http://localhost:3030' }
#   let(:api_key) { 'test_api_key' }
#   let(:client) { described_class.new }


#   describe '#geocode' do
#     let(:address) { '123 Test St' }
#     let(:response_body) { { result: { lat: 35.6895, lng: 139.6917 } } }

#     before do
#       stub_request(:get, "#{base_url}/geocode")
#         .with(query: { address: address }, headers: { 'Authorization' => "Bearer #{api_key}" })
#         .to_return(status: 200, body: response_body.to_json, headers: { 'Content-Type' => 'application/json' })
#     end

#     it 'returns geocode response' do
#       response = client.geocode(address)
#       expect(response.lat).to eq(35.6895)
#       expect(response.lng).to eq(139.6917)
#     end
#   end

#   describe '#handle_error' do
#     let(:address) { '123 Test St' }

#     before do
#       stub_request(:get, "#{base_url}/geocode")
#         .with(query: { address: address }, headers: { 'Authorization' => "Bearer #{api_key}" })
#         .to_return(status: 400, body: { error: 'Bad Request' }.to_json, headers: { 'Content-Type' => 'application/json' })
#     end

#     it 'raises an error with status and body' do
#       expect { client.geocode(address) }.to raise_error(AddressBaseRegistoryGeocoder::ErrorHandler) do |error|
#         expect(error.status).to eq(400)
#         expect(error.body).to eq('Bad Request')
#       end
#     end
#   end
# end
