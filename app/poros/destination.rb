class Destination
  attr_reader :start_point

  def initialize(coord, location)
    @coord = coord
    @start_point = location
  end

  def trails
    TrailFacade.trails_for_location(@coord)
  end

  def forecast
    lat = @coord.lat
    lon = @coord.lon
    all_data = WeatherFacade.fetch_weather(lat, lon)
    current_cond = all_data.current_weather.conditions
    current_temp = all_data.current_weather.temperature
  end
end
