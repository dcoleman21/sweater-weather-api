class Image
  attr_reader :image_url, :credit

  def initialize(data)
    @image_url = data[:photos][1][:src][:original]
    @credit = credit_hash(data)
  end

  def credit_hash(data)
    {
      source: data[:photos][1][:photographer_url],
      author: data[:photos][1][:photographer]
    }
  end
end
