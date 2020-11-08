require 'rails_helper'

RSpec.describe GeoFacade do
  it "it returns a location poro" do
    location = 'denver,co'
    geocode = GeoFacade.location(location)

    expect(geocode).to be_a(Location)
    expect(geocode.lat).to be_a(Float)
    expect(geocode.lon).to be_a(Float)
  end
end
