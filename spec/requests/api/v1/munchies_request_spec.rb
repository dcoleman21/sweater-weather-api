require 'rails_helper'

RSpec.describe 'Munchies API' do
  describe 'happy paths' do
    it "returns json of food data for location" do

      get '/api/v1/munchies?start=denver,co&end=pueblo,co&food=chinese'

      expect(response).to be_successful
      munchie = JSON.parse(response.body, symbolize_names: true)

      expect(munchie).to be_a(Hash)
      expect(munchie).to have_key(:data)
      expect(munchie[:data]).to be_a(Hash)

      expect(munchie[:data]).to have_key(:id)
      expect(munchie[:data][:id]).to eq(nil)
      expect(munchie[:data]).to have_key(:type)
      expect(munchie[:data][:type]).to eq('munchie')
      expect(munchie[:data]).to have_key(:attributes)
      expect(munchie[:data][:attributes]).to be_a(Hash)

      attributes = munchie[:data][:attributes]

      expect(attributes).to have_key(:destination_city)
      expect(attributes[:destination_city]).to be_a(String)
      expect(attributes).to have_key(:travel_time)
      expect(attributes[:travel_time]).to be_a(String)#hours mins
      expect(attributes).to have_key(:forecast)
      expect(attributes[:forecast]).to be_a(Hash)
      expect(attributes[:forecast]).to have_key(:summary)
      expect(attributes[:forecast][:summary]).to be_a(String)
      expect(attributes[:forecast]).to have_key(:temperature)
      expect(attributes[:forecast][:temperature]).to be_a(Numeric)
      expect(attributes).to have_key(:restaurant)
      expect(attributes[:restaurant]).to be_a(Hash)
      expect(attributes[:restaurant]).to have_key(:name)
      expect(attributes[:restaurant][:name]).to be_a(String)
      expect(attributes[:restaurant]).to have_key(:address)
      expect(attributes[:restaurant][:address]).to be_a(String)
    end
  end
end
