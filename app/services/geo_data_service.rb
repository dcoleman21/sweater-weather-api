class GeoDataService

  def self.get_address(location)#"denver,co"
    response = Faraday.get("#{ENV['MAP_URL']}/geocoding/v1/address?key=#{ENV['MAPQUEST_API_KEY']}&location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_distance(lat1, lon1, lat2, lon2)
    start = "#{lat1}, #{lon1}"#start at denver lat,lon
    destination= "#{lat2}, #{lon2}"#end at roxborough lat, lon
    response = Faraday.get("#{ENV['MAP_URL']}/directions/v2/route?key=#{ENV['MAPQUEST_API_KEY']}&from=#{start}&to=#{destination}")
    JSON.parse(response.body, symbolize_names: true)
  end

  # def self.get_travel_time(lat1, lon1, lat2, lon2)
  #   require "pry"; binding.pry
  #   start = "#{lat1}, #{lon1}"
  #   dest = "#{lat2}, #{lon2}"
  #   response = Faraday.get("#{ENV['MAP_URL']}/directions/v2/route?key=#{ENV['MAPQUEST_API_KEY']}&from=#{start}&to=#{dest}")
  #   JSON.parse(response.body, symbolize_names: true)
  # end
end
