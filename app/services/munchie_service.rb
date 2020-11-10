class MunchieService
  def self.search_restaurant(lat, lon, term)
    response = conn.get('/v3/businesses/search') do |req|
      req.params['term'] = term
      req.params['latitude'] = 38.2325574
      req.params['longitude'] = -104.6628568
      req.params['open_now'] = true
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "#{ENV['YELP_URL']}") do |faraday|
      faraday.headers['Authorization'] = "Bearer #{ENV['YELP_API_KEY']}"
    end
  end
end
