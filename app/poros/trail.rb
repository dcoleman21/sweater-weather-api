class Trail
  attr_reader :location, :forecast, :trails

  def initialize(trails, weather, coordinates, location)
    @trails = trails_info(trails, coordinates)
    @forecast = trail_forecast(weather)
    @location = location
  end

  def trails_info(trails, coordinates)
    trails[:trails].map do |trail|
      {
        name: trail[:name],
        summary: trail[:summary],
        difficulty: trail[:difficulty],
        location: trail[:location],
        distance_to_trail: distance(coordinates.lat, coordinates.lon, trail[:latitude], trail[:longitude])
      }
    end
  end

  def distance(lat1, lon1, lat2, lon2)
    GeoFacade.get_distance(lat1, lon1, lat2, lon2)
  end

  def trail_forecast(weather)
    {
      summary: weather.current_weather.conditions,
      temperature: weather.current_weather.temperature
    }
  end
end
