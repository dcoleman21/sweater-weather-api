require 'rails_helper'

RSpec.describe 'Weather Facade' do
  it 'returns forecast poro' do
    lat = 39.74
    lon = 104.98
    forecast = WeatherFacade.fetch_weather(lat, lon)

    expect(forecast).to be_a(Forecast)
    expect(forecast.current).to be_a(Hash)
    expect(forecast.current.datetime).to be_a(Time)
    expect(forecast.daily).to be_an(Array)
    expect(forecast.daily.max_temp).to be_a(Numeric)
    expect(forecast.hourly).to be_an(Array)
    expect(forecast.hourly.condition).to be_a(String)
  end
end
