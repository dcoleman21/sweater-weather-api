class Forecast
  attr_reader :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(data)
    @current_weather = current(data[:current])
    # @daily_weather = daily(data[:daily], 5)
    # @hourly_weather = hourly(data[:hourly], 8)
  end

  def current(weather)
    Weather.new(weather)
  end
#these are not created yet
  # def daily(weather, limit = 5)
  #   weather[:daily].first(limit).map do |data|
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
