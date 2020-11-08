class Location
  attr_reader :lat,
              :lon

  def initialize(attr)
    @lat = attr[:results].first[:locations].first[:latLng][:lat]
    @lon = attr[:results].first[:locations].first[:latLng][:lng]
  end
end
