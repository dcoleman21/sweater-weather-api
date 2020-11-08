class GeoFacade

  def self.fetch_coordinates(location)
    response = GeocodeService.get_address(location)
    Location.new(response)
  end
end
