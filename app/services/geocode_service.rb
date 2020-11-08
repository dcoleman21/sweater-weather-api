class GeocodeService

  def self.get_address(location)
    response = Faraday.get("#{ENV['MAP_URL']}/geocoding/v1/address?key=#{ENV['MAPQUEST_API_KEY']}&location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end

end
