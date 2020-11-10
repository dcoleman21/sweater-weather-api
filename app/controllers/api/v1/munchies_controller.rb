class Api::V1::MunchiesController < ApplicationController

  def index
    munchie = MunchieFacade.restaurants_near_location(params)
    render json: MunchieSerializer.new(munchie)
  end
end
