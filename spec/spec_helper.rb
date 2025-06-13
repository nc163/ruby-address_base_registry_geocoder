require "bundler/setup"
Bundler.setup

require "json"
require "address_base_registory_geocoder"

RSpec.configure do |rspec_config|

  rspec_config.before(:all) do
    AddressBaseRegistoryGeocoder::configure do |config|
      config.scheme = "http"
      config.host = "127.0.0.1"
      config.port = 3002
    end
  end

end