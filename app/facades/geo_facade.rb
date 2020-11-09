class GeoFacade

  def self.location(location)
    response = GeocodeService.get_address(location)
    Location.new(response)
  end

  def self.get_distance(destination, start_point)
    response = GeocodeService.get_distance(destination, start_point)
  end
end
