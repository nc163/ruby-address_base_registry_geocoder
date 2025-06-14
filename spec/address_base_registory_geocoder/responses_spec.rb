# frozen_string_literal: true

require "spec_helper"

describe AddressBaseRegistoryGeocoder::Responses do
  
  describe AddressBaseRegistoryGeocoder::Responses::GeocodeResponse do
    let(:response_body) do
      [
        {
          "query"=>{"input"=>"東京都 台東区 上野公園 ７−７"}, 
          "result"=>{"output"=>"東京都台東区上野公園7-7", "others"=>[], "score"=>0.93, "match_level"=>"residential_detail", "coordinate_level"=>"residential_detail", "lat"=>35.714952981, "lon"=>139.775372778, "lg_code"=>"131067", "machiaza_id"=>"0031000", "rsdt_addr_flg"=>1, "blk_id"=>"007", "rsdt_id"=>"007", "rsdt2_id"=>nil, "prc_id"=>nil, "pref"=>"東京都", "county"=>nil, "city"=>"台東区", "ward"=>nil, "oaza_cho"=>"上野公園", "chome"=>nil, "koaza"=>nil, "blk_num"=>"7", "rsdt_num"=>"7", "rsdt_num2"=>nil, "prc_num1"=>nil, "prc_num2"=>nil, "prc_num3"=>nil}
        }
      ]
    end

    it "creates a GeocodeResponse" do
      expect(described_class.new(response_body)).to be_a(AddressBaseRegistoryGeocoder::Responses::GeocodeResponse)
    end

  end
end