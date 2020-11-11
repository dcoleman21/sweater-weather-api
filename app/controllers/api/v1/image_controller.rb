class Api::V1::ImageController < ApplicationController
  def show
    image = ImageFacade.location_background(params[:location])
    render json: ImageSerializer.new(image)
  end
end
