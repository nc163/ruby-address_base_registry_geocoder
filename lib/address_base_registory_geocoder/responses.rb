# frozen_string_literal: true

module AddressBaseRegistoryGeocoder
  module Responses

    class GeocodeResponse
      attr_reader :address, :pref, :city, :score, :match_level, :coordinate_level, :lat, :lon

      def initialize(result)
        @address = result[:output]
        @pref = result[:pref]
        @city = result[:city]
        @score = result[:score]
        @match_level = result[:match_level]
        @coordinate_level = result[:coordinate_level]
        @lat = result[:lat]
        @lon = result[:lon]
      end

      def to_h
        {
          address: @address,
          pref: @pref,
          city: @city,
          score: @score,
          match_level: @match_level,
          coordinate_level: @coordinate_level,
          lat: @lat,
          lon: @lon,
        }
      end
    end
    
  end
end