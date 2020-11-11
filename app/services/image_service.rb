class ImageService
  def self.location_background(location)
    response = Faraday.get("#{ENV['IMAGE_URL']}/v1/search") do |req|
      req.params['query'] = "#{location} skyline"
      req.params['page'] = 1
      req.headers['Authorization'] = ENV['IMAGE_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)  end
end
