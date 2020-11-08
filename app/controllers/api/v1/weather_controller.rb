class Api::V1::WeatherController < ApplicationController
  def show
    location = params[:location]
    coords = GeoFacade.location(location)
    forecast = WeatherFacade.fetch_weather(coords.lat, coords.lon)
    render json: ForecastSerializer.new(forecast)
  end
end
