require 'rails_helper'

RSpec.describe GeoFacade do
  it "it returns a location poro" do
    location = 'denver,co'
    geocode = GeoFacade.location(location)

    expect(geocode).to be_a(Location)
    expect(geocode.lat).to be_a(Numeric)
    expect(geocode.lon).to be_a(Numeric)
  end

  it "can location distance" do
    lat1 = 39.738453
    lon1 = -104.982323
    lat2 = 39.95816
    lon2 = -105.257965

    distance = GeoFacade.get_distance(lat1, lon1, lat2, lon2)

    expect(distance).to be_a(Numeric)
  end
end
