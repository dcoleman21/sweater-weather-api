class MunchieFacade
  def self.restaurants_near_location(dest)#has den and pueblo
    dest_coord = GeoFacade.location(dest[:end])
    org_coord = GeoFacade.location(dest[:start])
    weather = WeatherFacade.fetch_weather(dest_coord.lat, dest_coord.lon)#forecast object
    result = MunchieService.search_restaurant(dest_coord.lat, dest_coord.lon, dest[:food])
    travel_time = GeoDataService.get_distance(dest_coord.lat, dest_coord.lon, org_coord.lat, org_coord.lon)
    Munchie.new(result, weather, travel_time, dest[:end])
  end
end
