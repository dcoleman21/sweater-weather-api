class HourlyWeather
  attr_reader :time,
              :wind_speed,
              :wind_direction,
              :conditions,
              :icon

  def initialize(data)
    @time = Time.now(data[:dt])
    @wind_speed = data[:wind_speed]
    @wind_direction = data[:wind_deg] #find out how to do this one
    @condition = data[:weather][0][:description]
    @icon = data[:weather][0][:icon]
  end
end
