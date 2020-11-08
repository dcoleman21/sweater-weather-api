require 'rails_helper'

RSpec.describe Weather do
  it "Exists" do
    data = {
      "lat": 39.74,
      "lon": -104.98,
      "timezone": "America/Denver",
      "timezone_offset": -25200,
      "current": {
          "dt": 1604859438,
          "sunrise": 1604842631,
          "sunset": 1604879418,
          "temp": 54.5,
          "feels_like": 40.69,
          "pressure": 1003,
          "humidity": 14,
          "dew_point": 9.05,
          "uvi": 2.77,
          "clouds": 20,
          "visibility": 10000,
          "wind_speed": 13.87,
          "wind_deg": 220,
          "wind_gust": 25.28,
          "weather": [
            {
              "id": 801,
              "main": "Clouds",
              "description": "few clouds",
              "icon": "02d"
            }
          ]
        }
    }

    weather = Weather.new(data)
    expect(weather).to be_a(Weather)
    expect(weather.datetme).to be_a(Time)
    expect(weather.sunrise).to be_a(Time)
    expect(weather.sunset).to be_a(Time)
    expect(weather.temperature).to be_a(Float)
    expect(weather.feels_like).to be_a(Float)
    expect(weather.humidity).to be_a(Numeric)
    expect(weather.uvi).to be_a(Numeric)
    expect(weather.visibility).to be_a(Numeric)
    expect(weather.condtions).to be_a(String)
    expect(weather.icon).to be_a(String)
  end
end
