require 'rails_helper'
RSpec.describe ImageService do
  it "returns image data for location in json" do
    location = 'denver,co'

    result = ImageService.location_background(location)
    
    expect(result).to be_a(Hash)
    expect(result).to have_key(:photos)
    expect(result[:photos]).to be_an(Array)
    expect(result[:photos][0]).to have_key(:url)
    expect(result[:photos][0][:url]).to be_a(String)
    expect(result[:photos][0]).to have_key(:photographer)
    expect(result[:photos][0][:photographer]).to be_a(String)
    expect(result[:photos][0]).to have_key(:src)
    expect(result[:photos][0][:src]).to be_a(Hash)
    expect(result[:photos][0][:src]).to have_key(:original)
    expect(result[:photos][0][:src][:original]).to be_a(String)
  end
end
