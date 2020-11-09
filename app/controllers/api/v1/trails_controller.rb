class Api::V1::TrailsController < ApplicationController
  def index
    coordinates = GeoFacade.location(params[:location])
    weather = WeatherFacade.fetch_weather(coordinates.lat, coordinates.lon)
    expected_weather = weather.current_weather
    trails = TrailFacade.trails_for_location(coordinates)
    # require "pry"; binding.pry
  end
end
