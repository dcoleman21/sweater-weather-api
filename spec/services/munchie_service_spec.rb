require 'rails_helper'

RSpec.describe MunchieService do
  it "returns food for location in json" do
    dest = 'pueblo,co'
    latitude = 38.7879252396266
    longitude = -104.75639659641
    term = 'chinese'

    result = MunchieService.search_restaurant(term, dest)

    expect(result).to be_a(Hash)
    expect(result).to have_key(:businesses)
    expect(result[:businesses]).to be_an(Array)
    expect(result[:businesses].first).to have_key(:name)
    expect(result[:businesses].first[:name]).to be_a(String)
    expect(result[:businesses].first).to have_key(:location)
    expect(result[:businesses].first[:location]).to be_a(Hash)
    expect(result[:businesses].first[:location]).to have_key(:display_address)
    expect(result[:businesses].first[:location][:display_address]).to be_an(Array)
  end
end
