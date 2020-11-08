require 'rails_helper'

RSpec.describe "Forecast request" do
  it "returns the forecast for a specific location" do
    get '/api/v1/forecast?location=denver,co'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data][:id]).to eq(nil)
    expect(json[:data][:type]).to eq('forecast')
    expect(json[:data]).to have_key(:attributes)
    expect(json[:data][:attributes]).to be_a(Hash)
    expect(json[:data][:attributes]).to have_key(:current_weather)
    expect(json[:data][:attributes][:current_weather]).to be_a(Hash)

    current_weather = json[:data][:attributes][:current_weather]

    expect(current_weather).to have_key(:datetime)
    expect(Time.parse(current_weather[:datetime])).to be_a(Time)
    expect(current_weather).to have_key(:sunrise)
    expect(Time.parse(current_weather[:sunrise])).to be_a(Time)
    expect(current_weather).to have_key(:sunset)
    expect(Time.parse(current_weather[:sunset])).to be_a(Time)
    expect(current_weather).to have_key(:temperature)
    expect(current_weather[:temperature]).to be_a(Float)#Fahrenheit
    expect(current_weather).to have_key(:feels_like)
    expect(current_weather[:feels_like]).to be_a(Float)#Fahrenheit
    expect(current_weather).to have_key(:humidity)
    expect(current_weather[:humidity]).to be_an(Integer)
    expect(current_weather).to have_key(:uvi)
    expect(current_weather[:uvi]).to be_a(Float)
    expect(current_weather).to have_key(:visibility)
    expect(current_weather[:visibility]).to be_an(Integer)
    expect(current_weather).to have_key(:conditions)
    expect(current_weather[:conditions]).to be_a(String)
    expect(current_weather).to have_key(:icon)
    expect(current_weather[:icon]).to be_a(String)

    daily_weather = json[:data][:attributes][:daily_weather]

    expect(daily_weather).to be_an(Array)
    expect(daily_weather[0]).to have_key(:date)
    expect(Time.parse(daily_weather[0][:date])).to be_a(Time)
    expect(daily_weather[0]).to have_key(:sunrise)
    expect(Time.parse(daily_weather[0][:sunrise])).to be_a(Time)
    expect(daily_weather[0]).to have_key(:sunset)
    expect(Time.parse(daily_weather[0][:sunset])).to be_a(Time)
    expect(daily_weather[0]).to have_key(:max_temp)
    expect(daily_weather[0][:max_temp]).to be_a(Float)#Fahrenheit
    expect(daily_weather[0]).to have_key(:min_temp)
    expect(daily_weather[0][:min_temp]).to be_a(Float)#Fahrenheit
    expect(daily_weather[0]).to have_key(:conditions)
    expect(daily_weather[0][:conditions]).to be_a(String)
    expect(daily_weather[0]).to have_key(:icon)
    expect(daily_weather[0][:icon]).to be_a(String)
    
    hourly_weather = json[:data][:attributes][:hourly_weather]

    expect(hourly_weather).to be_an(Array)
    expect(hourly_weather[0]).to have_key(:time)
    expect(Time.parse(hourly_weather[0][:time])).to be_a(Time)
    expect(hourly_weather[0]).to have_key(:wind_speed)
    expect(hourly_weather[0][:wind_speed]).to be_a(String)#mph
    expect(hourly_weather[0]).to have_key(:wind_direction)
    expect(hourly_weather[0][:wind_speed]).to be_a(String)#check wikipedia for how to convert this numeric value
    expect(hourly_weather[0]).to have_key(:conditions)
    expect(hourly_weather[0][:conditions]).to be_a(String)
    expect(hourly_weather[0]).to have_key(:icon)
    expect(hourly_weather[0][:icon]).to be_a(String)
  end
end
