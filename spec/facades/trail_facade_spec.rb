require 'rails_helper'

RSpec.describe TrailFacade do
  it "returns trail object" do
    location = 'denver,co'
    lat = 39.738453
    lon = -104.984853

    found = TrailFacade.trails_for_location(location)

    expect(found).to be_a(Trail)
    expect(found.forecast).to be_a(Hash)
    expect(found.forecast).to have_key(:summary)
    expect(found.forecast[:summary]).to be_a(String)
    expect(found.forecast).to have_key(:temperature)
    expect(found.forecast[:temperature]).to be_a(Numeric)

    expect(found.location).to be_a(String)

    expect(found.trails).to be_an(Array)
    expect(found.trails.first).to be_a(Hash)
    expect(found.trails.first).to have_key(:name)
    expect(found.trails.first[:name]).to be_a(String)
    expect(found.trails.first).to have_key(:summary)
    expect(found.trails.first[:summary]).to be_a(String)
    expect(found.trails.first).to have_key(:difficulty)
    expect(found.trails.first[:difficulty]).to be_a(String)
    expect(found.trails.first).to have_key(:location)
    expect(found.trails.first[:location]).to be_a(String)
    expect(found.trails.first).to have_key(:distance_to_trail)
    expect(found.trails.first[:distance_to_trail]).to be_a(Numeric)
  end
end
