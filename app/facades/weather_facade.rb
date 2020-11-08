class WeatherFacade
  def self.fetch_weather(lat, lon)
    weather_res = ForecastService.forecast(lat, lon)
    Forecast.new(weather_res)
  end
end
