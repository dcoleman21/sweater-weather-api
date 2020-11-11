class ImageFacade
  def self.location_background(location)
    result = ImageService.location_background(location)
    Image.new(result,location)
  end
end
