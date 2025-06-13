require "bundler/setup"
Bundler.setup

require "json"
require "address_base_registory_geocoder"

RSpec.configure do |rspec_config|

  rspec_config.before(:all) do
    AddressBaseRegistoryGeocoder::configure do |config|
      config.url = "http://127.0.0.1:3030"
    end
  end

end