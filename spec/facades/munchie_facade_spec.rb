# # require 'rails_helper'
# #
# RSpec.describe MunchieFacade do
#   it "returns a restaurant object with specific food type" do
#     dest = 'pueblo,co'
#     latitude = 38.2325574
#     longitude = -104.6628568
#     term = 'chinese'
#
#     result = MunchieFacade.restaurants_near_location(dest)
#
#     expect(result).to be_a(Munchie)
#
#     expect(result.destination_city).to be_a(String)
#     expect(result.travel_time).to be_a(String)
#
#     expect(result.forecast).to be_a(Hash)
#     expect(result.forecast).to have_key(:summary)
#     expect(result.forecast[:summary]).to be_a(String)
#     expect(result.forecast).to have_key(:temperature)
#     expect(result.forecast[:temperature]).to be_a(Numeric)
#
#     expect(result.restaurant.first).to be_a(Hash)
#     expect(result.restaurant.first).to have_key(:name)
#     expect(result.restaurant.first[:name]).to be_a(String)
#     expect(result.restaurant.first).to have_key(:address)
#     expect(result.restaurant.first[:address]).to be_a(String)
#   end
# # end
