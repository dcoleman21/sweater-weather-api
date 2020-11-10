class MunchieFacade
  def self.restaurants_near_location(dest)#pueblo,co
    coordinates = GeoFacade.location(dest)
    weather = WeatherFacade.fetch_weather(coordinates.lat, coordinates.lon)#forecast object
    result = MunchieService.search_restaurant(coordinates.lat, coordinates.lon)
    # travel_time = GeoDataService
    Munchie.new(result, weather, dest, coordinates)
  end
end
