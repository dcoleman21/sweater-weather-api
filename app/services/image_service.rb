class ImageService
  def self.location_background(location)
    response = Faraday.get("#{ENV['IMAGE_URL']}/v1/search?query=denver,co&page=5") do |req|
      req.params['query'] = location
      req.params['page'] = 5
      req.headers['Authorization'] = ENV['IMAGE_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)  end
end
