class TrailFacade
  def self.trails_for_location(data)
    result = TrailService.get_trails(data)
    Trail.new(result, data)
  end
end
