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

  def daily(weather, limit = 5)
    weather[:daily].first.map do |data|
      DailyWeather.new(data)
    end
  end

  def hourly(weather, limit = 8)
    weather[:hourly].first(limit).map do |data|
      HourlyWeather.new(data)
    end
  end
end
