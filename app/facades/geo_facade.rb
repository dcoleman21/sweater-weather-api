class GeoFacade

  def self.location(location)
    response = GeoDataService.get_address(location)
    Location.new(response)
  end

  def self.get_distance(destination, start_point)
    response = GeoDataService.get_distance(destination, start_point)
  end
end
