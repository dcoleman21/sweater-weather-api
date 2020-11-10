require 'rails_helper'

RSpec.describe ImageFacade do
  it "gets an image object" do
    location = 'denver,co'

    photo = ImageFacade.location_background(location)

    expect(photo).to be_a(Image)
    expect(photo.image_url).to be_a(String)
    expect(photo.credit).to be_a(Hash)
    expect(photo.credit[:source]).to be_a(String)
    expect(photo.credit[:author]).to be_a(String)
  end
end
