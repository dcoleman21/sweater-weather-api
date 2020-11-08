class GeoFacade

  def self.location(location)
    response = GeocodeService.get_address(location)
    Location.new(response)
  end
end
