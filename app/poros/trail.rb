class Trail
  attr_reader :name,
              :summary,
              :difficulty,
              :location,
              :distance_to_trail
  def initialize(data, coord)
    @name = data[:name]
    @summary = data[:summary]
    @difficulty = data[:difficulty]
    @location = data[:location]
    @start_point = coord
    @distance_to_trail = distance_to_trail
  end

  def distance_to_trail
    GeoFacade.location(@location, @start_point)
    require "pry"; binding.pry
  end

end
