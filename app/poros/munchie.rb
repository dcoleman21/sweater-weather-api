class Munchie
  attr_reader :destination_city,
              :travel_time,
              :forecast,
              :restaurant

  def initialize(restaurant, weather, dest, coordinates)
    @restaurant = restaurant
    @travel_time = get_travel_time(coordinates.lat, coordinates.lon, restaurant[:latitude], restaurant[:longitude])
    @forecast = weather_to_forecast(weather)
    @destination_city = dest
  end

  def weather_to_forecast(weather)
    {
      summary: weather.current_weather[:conditions],
      temperature: weather.current_weather[:temperature]
    }
  end

  def get_travel_time(lat1, lon1, lat2, lon2)
    GeoFacade.get_travel_time(lat1, lon1, lat2, lon2)
  end
end
