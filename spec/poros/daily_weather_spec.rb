require 'rails_helper'

describe DailyWeather do
  it 'Exists' do
    data = {
      "daily": [
          {
            "dt": 1604858400,
            "sunrise": 1604842631,
            "sunset": 1604879418,
            "temp": {
                "day": 54.5,
                "min": 48.6,
                "max": 56.5,
                "night": 48.6,
                "eve": 54.28,
                "morn": 56.35
            },
            "feels_like": {
                "day": 41.79,
                "night": 40.48,
                "eve": 39.69,
                "morn": 44.58
            },
            "pressure": 1003,
            "humidity": 14,
            "dew_point": 9.05,
            "wind_speed": 11.9,
            "wind_deg": 180,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02d"
                }
            ],
            "clouds": 20,
            "pop": 0.51,
            "uvi": 2.77
        },
        {
            "dt": 1604944800,
            "sunrise": 1604929101,
            "sunset": 1604965761,
            "temp": {
                "day": 38.82,
                "min": 32.52,
                "max": 43.63,
                "night": 33.04,
                "eve": 33.4,
                "morn": 40.06
            },
            "feels_like": {
                "day": 31.66,
                "night": 27.59,
                "eve": 25.65,
                "morn": 28.42
            },
            "pressure": 1008,
            "humidity": 70,
            "dew_point": 23.61,
            "wind_speed": 5.86,
            "wind_deg": 48,
            "weather": [
                {
                    "id": 803,
                    "main": "Clouds",
                    "description": "broken clouds",
                    "icon": "04d"
                }
            ],
            "clouds": 76,
            "pop": 0.88,
            "uvi": 2.41
        },
        {
            "dt": 1605031200,
            "sunrise": 1605015570,
            "sunset": 1605052105,
            "temp": {
                "day": 40.71,
                "min": 30.97,
                "max": 45.19,
                "night": 37.04,
                "eve": 43.09,
                "morn": 30.97
            },
            "feels_like": {
                "day": 33.12,
                "night": 31.71,
                "eve": 37.51,
                "morn": 24.03
            },
            "pressure": 1014,
            "humidity": 57,
            "dew_point": 13.1,
            "wind_speed": 5.88,
            "wind_deg": 197,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02d"
                }
            ],
            "clouds": 16,
            "pop": 0.08,
            "uvi": 2.43
        },
        {
            "dt": 1605117600,
            "sunrise": 1605102040,
            "sunset": 1605138452,
            "temp": {
                "day": 41.14,
                "min": 33.76,
                "max": 44.67,
                "night": 37.72,
                "eve": 41.61,
                "morn": 33.76
            },
            "feels_like": {
                "day": 34.7,
                "night": 30.83,
                "eve": 35.06,
                "morn": 28.17
            },
            "pressure": 1013,
            "humidity": 56,
            "dew_point": 12.6,
            "wind_speed": 3.83,
            "wind_deg": 53,
            "weather": [
                {
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03d"
                }
            ],
            "clouds": 34,
            "pop": 0,
            "uvi": 2.46
        },
        {
            "dt": 1605204000,
            "sunrise": 1605188509,
            "sunset": 1605224799,
            "temp": {
                "day": 43.16,
                "min": 33.37,
                "max": 47.73,
                "night": 38.32,
                "eve": 45.48,
                "morn": 33.37
            },
            "feels_like": {
                "day": 38.12,
                "night": 31.33,
                "eve": 39.54,
                "morn": 25.57
            },
            "pressure": 1019,
            "humidity": 48,
            "dew_point": 7.36,
            "wind_speed": 0.96,
            "wind_deg": 201,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "clouds": 0,
            "pop": 0,
            "uvi": 2.27
        },
        {
            "dt": 1605290400,
            "sunrise": 1605274979,
            "sunset": 1605311149,
            "temp": {
                "day": 46.36,
                "min": 36.43,
                "max": 50.07,
                "night": 40.75,
                "eve": 46.99,
                "morn": 36.43
            },
            "feels_like": {
                "day": 40.53,
                "night": 35.42,
                "eve": 41.09,
                "morn": 29.5
            },
            "pressure": 1009,
            "humidity": 40,
            "dew_point": 3.96,
            "wind_speed": 2.08,
            "wind_deg": 159,
            "weather": [
                {
                    "id": 804,
                    "main": "Clouds",
                    "description": "overcast clouds",
                    "icon": "04d"
                }
            ],
            "clouds": 92,
            "pop": 0,
            "uvi": 2.27
        },
        {
            "dt": 1605376800,
            "sunrise": 1605361448,
            "sunset": 1605397500,
            "temp": {
                "day": 49.86,
                "min": 36.93,
                "max": 56.37,
                "night": 42.57,
                "eve": 51.06,
                "morn": 36.93
            },
            "feels_like": {
                "day": 43.11,
                "night": 37.89,
                "eve": 41.85,
                "morn": 27.19
            },
            "pressure": 1005,
            "humidity": 37,
            "dew_point": 8.02,
            "wind_speed": 3.96,
            "wind_deg": 96,
            "weather": [
                {
                    "id": 804,
                    "main": "Clouds",
                    "description": "overcast clouds",
                    "icon": "04d"
                }
            ],
            "clouds": 98,
            "pop": 0.15,
            "uvi": 2.31
        },
        {
            "dt": 1605463200,
            "sunrise": 1605447917,
            "sunset": 1605483853,
            "temp": {
                "day": 39.74,
                "min": 33.78,
                "max": 40.19,
                "night": 33.78,
                "eve": 36.34,
                "morn": 37.36
            },
            "feels_like": {
                "day": 23.97,
                "night": 25.02,
                "eve": 19.81,
                "morn": 25.72
            },
            "pressure": 1018,
            "humidity": 50,
            "dew_point": 1.56,
            "wind_speed": 19.57,
            "wind_deg": 302,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02d"
                }
            ],
            "clouds": 20,
            "pop": 0.19,
            "uvi": 2.46
          }
        ]
    }

    daily_weather = DailyWeather.new(data)
    expect(daily_weather).to be_a(DailyWeather)
    expect(daily_weather).to be_an(Array)
    expect(daily_weather.date).to be_a(Time)
    expect(daily_weather.sunrise).to be_a(Time)
    expect(daily_weather.sunset).to be_a(Time)
    expect(daily_weather.max_temp).to be_a(Float)
    expect(daily_weather.min_temp).to be_a(Float)
    expect(daily_weather.conditions).to be_a(String)
    expect(daily_weather.icon).to be_a(String)
  end
end
