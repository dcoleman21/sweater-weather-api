class Image
  attr_reader :image

  def initialize(data, location)
    @image = image_hash(data, location)
  end

  def image_hash(data, location)
    {
      location: location,
      image_url: data[:photos][0][:src][:original],
      credit: credit_hash(data)
    }
  end

  def credit_hash(data)
    {
      source: data[:photos][0][:photographer_url],
      author: data[:photos][0][:photographer]
    }
  end
end
