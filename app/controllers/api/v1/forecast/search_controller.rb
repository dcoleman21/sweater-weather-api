class Api::V1::Forecast::SearchController < ApplicationController
  def show
    render json: ForecastSerializer.new(ForecastFacade.get_forecast(params[:lat], params[:lon]))
  end
end
