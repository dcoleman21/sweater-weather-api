require 'rails_helper'

RSpec.describe ForecastService do
  it "returns weather data for a specific coordinate in json" do
    lat = 39.738453
    lon = -104.984853

    result = ForecastService.forecast(lat, lon)
  end

end
