require 'rails_helper'

describe "API weather request for a city endpoint" do
  it "returns the forecast for a specific location in JSON" do

    get '/api/v1/forecast?location=denver,co'
    # require "pry"; binding.pry
    response = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful

    current_weather = response[:data]

    expect(current_weather).to have_key(:id)
    expect(current_weather[:id]).to eq('')
    expect(current_weather).to have_key(:type)
    expect(current_weather[:type]).to eq('forecast')
    expect(current_weather).to have_key(:attributes)
    expect(current_weather[:attributes]).to be_a(Hash)
    expect(current_weather[:attributes]).to have_key(:current_weather)
    expect(current_weather[:attributes][:current_weather]).to be_a(Hash)
    expect(current_weather[:attributes][:current_weather]).to have_key(:datetime)
    expect(current_weather[:attributes][:current_weather][:datetime]).to be_a(Time)
    expect(current_weather[:attributes][:current_weather]).to have_key(:sunrise)
    expect(current_weather[:attributes][:current_weather][:sunrise]).to be_a(Time)
    expect(current_weather[:attribute][:current_weather]).to have_key(:sunset)
    expect(current_weather[:attributes][:current_weather][:sunset]).to be_a(Time)
    expect(current_weather[:attribute][:current_weather]).to have_key(:temperature)
    expect(current_weather[:attributes][:current_weather][:temperature]).to be_a(Float)#Fahrenheit
    expect(current_weather[:attribute][:current_weather]).to have_key(:feels_like)
    expect(current_weather[:attributes][:current_weather][:feels_like]).to be_a(Float)#Fahrenheit
    expect(current_weather[:attribute][:current_weather]).to have_key(:humidity)
    expect(current_weather[:attribute][:current_weather][:humidity]).to be_an(Integer)
    expect(current_weather[:attribute][:current_weather]).to have_key(:uvi)
    expect(current_weather[:attribute][:current_weather][:uvi]).to be_a(Float)
    expect(current_weather[:attribute][:current_weather]).to have_key(:visibility)
    expect(current_weather[:attribute][:current_weather][:visibility]).to be_an(Integer)
    expect(current_weather[:attribute][:current_weather]).to have_key(:conditions)
    expect(current_weather[:attribute][:current_weather][:conditions]).to be_a(String)
    expect(current_weather[:attribute][:current_weather]).to have_key(:icon)
    expect(current_weather[:attribute][:current_weather][:icon]).to be_a(String)

    daily_weather = response[:data][:attributes][:daily_weather]

    expect(daily_weather).to be_an(Array)
    expect(daily_weather[0]).to have_key(:date)
    expect(daily_weather[0][:date]).to be_a(Time)
    expect(daily_weather[0]).to have_key(:sunrise)
    expect(daily_weather[0][:sunrise]).to be_a(Time)
    expect(daily_weather[0]).to have_key(:sunset)
    expect(daily_weather[0][:sunset]).to be_a(Time)
    expect(daily_weather[0]).to have_key(:max_temp)
    expect(daily_weather[0][:max_temp]).to be_a(Float)#Fahrenheit
    expect(daily_weather[0]).to have_key(:min_temp)
    expect(daily_weather[0][:min_temp]).to be_a(Float)#Fahrenheit
    expect(daily_weather[0]).to have_key(:conditions)
    expect(daily_weather[0][:conditions]).to be_a(String)
    expect(daily_weather[0]).to have_key(:icon)
    expect(daily_weather[0][:icon]).to be_a(String)

    hourly_weather = response[:data][:attributes][:hourly_weather]

    expect(hourly_weather).to be_an(Array)
    expect(hourly_weather[0]).to have_key(:time)
    expect(hourly_weather[0][:time]).to be_a(Time)
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
