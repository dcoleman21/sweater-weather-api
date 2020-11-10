class GeoFacade

  def self.location(location)#"denver,co"
    response = GeoDataService.get_address(location)#mapquest hash for above location
    Location.new(response)#poro to get lat, lon
  end

  def self.get_distance(lat1, lon1, lat2, lon2)
    require "pry"; binding.pry
    response = GeoDataService.get_distance(lat1, lon1, lat2, lon2)
    response[:route][:distance]#pulls only the route distance from mapquest route hash
  end

  def self.get_travel_time(lat1, lon1, lat2, lon2)
    response = GeoDataService.get_distance(lat1, lon1, lat2, lon2)
    response[:route][:legs][:formattedTime]
  end
end
