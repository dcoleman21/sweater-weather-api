class TrailFacade
  def self.trails_for_location(data)
    require "pry"; binding.pry
    result = TrailService.get_trails(data)
    Trail.new(result,data)
  end
end
