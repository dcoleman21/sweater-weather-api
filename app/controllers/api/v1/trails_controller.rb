class Api::V1::TrailsController < ApplicationController
  def index
    location = params[:location]
    coordinates = GeoFacade.location(location)
    weather = WeatherFacade.fetch_weather(coordinates.lat, coordinates.lon)
    expected_weather = weather.current_weather
    trails = TrailFacade.trails_for_location(coordinates)
  end
end
