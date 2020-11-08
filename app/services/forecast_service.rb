class ForecastService

  def self.forecast(lat, lon)
    response = Faraday.get("#{ENV['WEATHER_URL']}/data/2.5/onecall?lat=#{lat}&lon=#{lon}&exclude=minutely,alerts&units=imperial&appid=#{ENV['OPEN_WEATHER_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
