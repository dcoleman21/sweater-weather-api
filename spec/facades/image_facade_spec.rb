require 'rails_helper'

RSpec.describe ImageFacade do
  it "gets an image object" do
    location = 'denver,co'

    photo = ImageFacade.location_background(location)

    expect(photo).to be_an(Image)
    expect(photo.image).to be_a(Hash)
    expect(photo.image).to have_key(:location)
    expect(photo.image[:location]).to be_a(String)
    expect(photo.image).to have_key(:image_url)
    expect(photo.image[:image_url]).to be_a(String)
    expect(photo.image).to have_key(:credit)
    expect(photo.image[:credit]).to be_a(Hash)
    expect(photo.image[:credit]).to have_key(:source)
    expect(photo.image[:credit][:source]).to be_a(String)
    expect(photo.image[:credit]).to have_key(:author)
    expect(photo.image[:credit][:author]).to be_a(String)
  end
end
