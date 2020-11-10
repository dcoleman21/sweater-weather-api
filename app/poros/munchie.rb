class Munchie
  attr_reader :destination_city,
              :travel_time,
              :forecast,
              :restaurant

  def initialize(yelp, weather, travel_time, destination)
    @yelp = yelp
    @time =  travel_time[:route][:formattedTime]
    @forecast = weather_to_forecast(weather)
    @destination_city = destination.capitalize
  end

  def weather_to_forecast(weather)
    {
      summary: weather.current_weather.conditions,
      temperature: weather.current_weather.temperature
    }
  end

  def travel_time
    hour = @time.slice(1, 1)
    minute = @time.slice(3, 2)
    "#{hour} hours #{minute} min"
  end

  def restaurant
    {name: @yelp[:businesses].first[:name],
    address: @yelp[:businesses].first[:location][:display_address]}
  end
end
