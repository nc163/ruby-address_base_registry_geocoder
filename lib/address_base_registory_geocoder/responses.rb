# frozen_string_literal: true

module AddressBaseRegistoryGeocoder
  module Responses

    class GeocodeResponse
      attr_reader :input
      attr_reader :output, :others

      attr_reader :pref, :city, :score, :match_level, :coordinate_level, :lat, :lon
      attr_reader :lg_code, :machiaza_id, :rsdt_addr_flg, :blk_id, :rsdt_id, :rsdt2_id, :prc_id, :county, :ward, :oaza_cho, :chome, :koaza, :blk_num, :rsdt_num, :rsdt_num2, :prc_num1, :prc_num2, :prc_num3

      def initialize(response)
        query = response[0]['query']
        result = response[0]['result']

        @input = query['input']
        @output = result['output']
        @pref = result['pref']
        @city = result['city']
        @score = result['score']
        @match_level = result['match_level']
        @coordinate_level = result['coordinate_level']
        @lat = result['lat']
        @lon = result['lon']
        @lg_code = result['lg_code']
        @machiaza_id = result['machiaza_id']
        @rsdt_addr_flg = result['rsdt_addr_flg']
        @blk_id = result['blk_id']
        @rsdt_id = result['rsdt_id']
        @rsdt2_id = result['rsdt2_id']
        @prc_id = result['prc_id']
        @county = result['county']
        @ward = result['ward']
        @oaza_cho = result['oaza_cho']
        @chome = result['chome']
        @koaza = result['koaza']
        @blk_num = result['blk_num']
        @rsdt_num = result['rsdt_num']
        @rsdt_num2 = result['rsdt_num2']
        @prc_num1 = result['prc_num1']
        @prc_num2 = result['prc_num2']
        @prc_num3 = result['prc_num3']
      end

      def to_h
        {
          query: @query,
          address: @address,
          pref: @pref,
          city: @city,
          score: @score,
          match_level: @match_level,
          coordinate_level: @coordinate_level,
          lat: @lat,
          lon: @lon,
          lg_code: @lg_code,
          machiaza_id: @machiaza_id,
          rsdt_addr_flg: @rsdt_addr_flg,
          blk_id: @blk_id,
          rsdt_id: @rsdt_id,
          rsdt2_id: @rsdt2_id,
          prc_id: @prc_id,
          county: @county,
          ward: @ward,
          oaza_cho: @oaza_cho,
          chome: @chome,
          koaza: @koaza,
          blk_num: @blk_num,
          rsdt_num: @rsdt_num,
          rsdt_num2: @rsdt_num2,
          prc_num1: @prc_num1,
          prc_num2: @prc_num2,
          prc_num3: @prc_num3,
        }
      end
    end
    
  end
end