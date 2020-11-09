class TrailService

  def self.get_trails(lat, lon)
    response = Faraday.get("#{ENV['TRAIL_URL']}/data/get-trails?lat=#{lat}&lon=#{lon}&maxDistance=10&key=#{ENV['TRAIL_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
