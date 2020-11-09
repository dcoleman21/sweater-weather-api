require 'rails_helper'

RSpec.describe TrailService do
  it "returns json of trail data based on coordinates" do
    location = 'denver,co'
    lat = 39.738453
    lon = -104.984853

    trails = TrailService.get_trails(lat, lon)

    expect(trails).to be_a(Hash)
    expect(trails).to have_key(:trails)
    expect(trails[:trails]).to be_an(Array)
    expect(trails[:trails].count).to eq(10)
    expect(trails[:trails].first).to have_key(:name)
    expect(trails[:trails].first[:name]).to be_a(String)
    expect(trails[:trails].first).to have_key(:summary)
    expect(trails[:trails].first[:summary]).to be_a(String)
    expect(trails[:trails].first).to have_key(:difficulty)
    expect(trails[:trails].first[:difficulty]).to be_a(String)
    expect(trails[:trails].first).to have_key(:location)
    expect(trails[:trails].first[:location]).to be_a(String)
    expect(trails[:trails].first).to have_key(:latitude)
    expect(trails[:trails].first[:latitude]).to be_a(Numeric)
    expect(trails[:trails].first).to have_key(:longitude)
    expect(trails[:trails].first[:longitude]).to be_a(Numeric)
  end
end
