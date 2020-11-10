class TrailFacade
  def self.trails_for_location(location)#"denver,co"
    coordinates = GeoFacade.location(location)#<Location:0x00007f8c155a04d0 @lat=39.738453, @lon=-104.984853>
    forecast = WeatherFacade.fetch_weather(coordinates.lat, coordinates.lon)#entire forecast object(current, daily, hourly) for denver
    result = TrailService.get_trails(coordinates.lat, coordinates.lon)#entire trails array for denver
    Trail.new(result, forecast, coordinates, location)
  end
end
