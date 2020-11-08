class Forecast
  attr_reader :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(weather)
    @current_weather = current(weather)
    @daily_weather   = daily(weather)
    @hourly_weather  = hourly(weather)
  end

  def current(weather)
    Weather.new(weather)
  end

  def daily(weather)
    weather.map do |weather|
      #this is coming back as [:lat, 39.74]
      { date: Time.now(day[:dt]),
        sunrise: Time.at(day[:sunrise]),
        sunset: Time.at(day[:sunset]),
        max_temp: day[:temp][:max],
        min_temp: day[:temp][:min],
        conditions: day[:weather][0][:description],
        icon: day[:weather][0][:icon]}
    end
  end

  # def daily(weather, limit = 5)
  #   weather[:daily][0].map do |data|
  #     DailyWeather.new(data)
  #   end
  # end
  #
  # def hourly(weather, limit = 8)
  #   weather[:hourly].first(limit).map do |data|
  #     HourlyWeather.new(data)
  #   end
  # end
end
