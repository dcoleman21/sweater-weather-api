class Location
  attr_reader :lat,
              :lon

  def initialize(attr)
    @lat = attr[:results][0][:locations][0][:latLng][:lat]
    @lon = attr[:results][0][:locations][0][:latLng][:lng]
  end
end
