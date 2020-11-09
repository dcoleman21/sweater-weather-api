class GeocodeService

  def self.get_address(location)
    response = Faraday.get("#{ENV['MAP_URL']}/geocoding/v1/address?key=#{ENV['MAPQUEST_API_KEY']}&location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_distance(destination, start_point)
    a = start_point.lat
    b = start_point.lon
    start = "#{a}, #{b}"
    response = Faraday.get("#{ENV['MAP_URL']}/directions/v2/route?key=#{ENV['MAPQUEST_API_KEY']}&from=#{start}&to=#{destination}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
