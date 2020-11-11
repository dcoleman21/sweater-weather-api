require 'rails_helper'

RSpec.describe 'Trail request' do
  it "returns json data of trail data for location" do
    location = 'denver,co'
    latitude = 39.738453
    longitude = -104.984853

    get "/api/v1/trails?location=#{location}"

    expect(response).to be_successful
    trails = JSON.parse(response.body, symbolize_names: true)

    expect(trails).to be_a(Hash)
    expect(trails).to have_key(:data)
    expect(trails[:data]).to be_a(Hash)

    expect(trails[:data]).to have_key(:id)
    expect(trails[:data][:id]).to eq(nil)
    expect(trails[:data]).to have_key(:type)
    expect(trails[:data][:type]).to eq('trail')
    expect(trails[:data]).to have_key(:attributes)
    expect(trails[:data][:attributes]).to be_a(Hash)

    attributes = trails[:data][:attributes]

    expect(attributes).to have_key(:location)
    expect(attributes[:location]).to be_a(String)
    expect(attributes).to have_key(:forecast)
    expect(attributes[:forecast]).to be_a(Hash)
    expect(attributes[:forecast]).to have_key(:summary)
    expect(attributes[:forecast][:summary]).to be_a(String)
    expect(attributes[:forecast]).to have_key(:temperature)
    expect(attributes[:forecast][:temperature]).to be_a(Numeric)
    expect(attributes).to have_key(:trails)
    expect(attributes[:trails]).to be_a(Array)

    attributes[:trails].each do |trail|
      expect(trail).to have_key(:name)
      expect(trail[:name]).to be_a(String)
      expect(trail).to have_key(:summary)
      expect(trail[:summary]).to be_a(String)
      expect(trail).to have_key(:difficulty)
      expect(trail[:difficulty]).to be_a(String)
      expect(trail).to have_key(:location)
      expect(trail[:location]).to be_a(String)
      expect(trail).to have_key(:distance_to_trail)
      expect(trail[:distance_to_trail]).to be_a(Numeric)
    end
  end
end
