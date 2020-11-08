require 'rails_helper'

RSpec.describe Forecast do
  it "creates forecast objects" do
    data = File.read('spec/fixtures/open_weather.json')
    parsed_data = JSON.parse(data, symbolize_names: true)
    forecast = Forecast.new(parsed_data)

    expect(forecast).to be_a(Forecast)

    expect(forecast.current_weather).to be_a(Weather)
    expect(forecast.daily_weather).to be_an(Array)
    expect(forecast.hourly_weather).to be_an(Array)
  end
end
