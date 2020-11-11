require 'rails_helper'

RSpec.describe "Forecast request" do
  it "returns the forecast for a specific location" do
    get '/api/v1/forecast?location=denver,co'

    expect(response).to be_successful
    forecast = JSON.parse(response.body, symbolize_names: true)

    expect(forecast).to be_a(Hash)
    expect(forecast).to have_key(:data)
    expect(forecast[:data]).to be_a(Hash)

    expect(forecast[:data]).to have_key(:id)
    expect(forecast[:data][:id]).to eq(nil)
    expect(forecast[:data]).to have_key(:type)
    expect(forecast[:data][:type]).to eq('forecast')
    expect(forecast[:data]).to have_key(:attributes)
    expect(forecast[:data][:attributes]).to be_a(Hash)
    expect(forecast[:data][:attributes]).to have_key(:current_weather)
    expect(forecast[:data][:attributes][:current_weather]).to be_a(Hash)

    current_weather = forecast[:data][:attributes][:current_weather]

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

    expect(forecast[:data][:attributes]).to have_key(:daily_weather)
    expect(forecast[:data][:attributes][:daily_weather]).to be_an(Array)
    expect(forecast[:data][:attributes][:daily_weather].count).to eq(5)
    forecast[:data][:attributes][:daily_weather].each do |day|
      expect(day).to have_key(:date)
      expect(Time.parse(day[:date])).to be_a(Time)
      expect(day).to have_key(:sunrise)
      expect(Time.parse(day[:sunrise])).to be_a(Time)
      expect(day).to have_key(:sunset)
      expect(Time.parse(day[:sunset])).to be_a(Time)
      expect(day).to have_key(:max_temp)
      expect(day[:max_temp]).to be_a(Float)#Fahrenheit
      expect(day).to have_key(:min_temp)
      expect(day[:min_temp]).to be_a(Float)#Fahrenheit
      expect(day).to have_key(:conditions)
      expect(day[:conditions]).to be_a(String)
      expect(day).to have_key(:icon)
      expect(day[:icon]).to be_a(String)
    end

    expect(forecast[:data][:attributes]).to have_key(:hourly_weather)
    expect(forecast[:data][:attributes][:hourly_weather]).to be_an(Array)
    expect(forecast[:data][:attributes][:hourly_weather].count).to eq(8)
    forecast[:data][:attributes][:hourly_weather].each do |hour|
      expect(hour).to have_key(:time)
      expect(Time.parse(hour[:time])).to be_a(Time)
      expect(hour).to have_key(:wind_speed)
      expect(hour[:wind_speed]).to be_a(String)#mph
      expect(hour).to have_key(:wind_direction)
      expect(hour[:wind_speed]).to be_a(String)#check wikipedia for how to convert this numeric value
      expect(hour).to have_key(:conditions)
      expect(hour[:conditions]).to be_a(String)
      expect(hour).to have_key(:icon)
      expect(hour[:icon]).to be_a(String)
    end
  end
end
