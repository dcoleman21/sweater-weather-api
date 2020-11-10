class Api::V1::MunchiesController < ApplicationController

  def index
    start = params[:start]
    dest = params[:end]
    food = params[:food]

    conn = Faraday.new(url: "#{ENV['YELP_URL']}")
    render json: {}
  end
end
