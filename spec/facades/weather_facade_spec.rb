require 'rails_helper'

RSpec.describe 'Weather Facade' do
  it 'returns forecast poro' do
    lat = 39.74
    lon = 104.98
    forecast = WeatherFacade.fetch_weather(lat, lon)

    expect(forecast).to be_a(Forecast)
    expect(forecast.current_weather).to be_a(Weather)
    expect(forecast.current_weather.datetime).to be_a(Time)
    expect(forecast.daily_weather).to be_an(Array)
    expect(forecast.daily_weather.first).to be_a(DailyWeather)
    expect(forecast.daily_weather.first.max_temp).to be_a(Numeric)
    expect(forecast.hourly_weather).to be_an(Array)
    expect(forecast.hourly_weather.first).to be_an(HourlyWeather)
    expect(forecast.hourly_weather.first.conditions).to be_a(String)
  end
end
