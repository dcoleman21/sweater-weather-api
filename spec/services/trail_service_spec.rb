require 'rails_helper'

RSpec.describe TrailService do
  it "returns json of trail data boased on coordinates" do
    latitude = 39.738453
    longitude = -104.984853

    result = TrailService.get_trails(latitude, longitude)

    expect(result).to be_a(Hash)
    expect(result).to_not have_key(:maxDistance)
    expect(result).to have_key(:trails)
    expect(result[:trails]).to be_an(Array)
    expect(result[:trails]).to have_key(:name)
    expect(result[:trails]).to have_key(:summary)
    expect(result[:trails]).to have_key(:difficulty)
    expect(result[:trails]).to have_key(:location)
  end
end
