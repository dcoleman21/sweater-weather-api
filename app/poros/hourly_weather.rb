class HourlyWeather
  attr_reader :time,
              :temperature,
              :wind_speed,
              :wind_direction,
              :conditions,
              :icon

  def initialize(data)
    @time = Time.at(data[:dt])
    @temperature = data[:temp]
    @wind_speed = "#{data[:wind_speed].to_s}mph"
    @wind_direction = "from #{get_wind_direction(data[:wind_deg])}" #find out how to do this one
    @conditions = data[:weather][0][:description]
    @icon = data[:weather][0][:icon]
  end

  def get_wind_direction(degree)
    return 'N' if degree.between?(348.75, 11.25)
    return 'NNE' if degree.between?(11.25, 33.75)
    return 'NE' if degree.between?(33.75, 56.25)
    return 'ENE' if degree.between?(56.25, 78.75)
    return 'E' if degree.between?(78.75, 101.25)
    return 'ESE' if degree.between?(101.25, 123.75)
    return 'SE' if degree.between?(123.75, 146.25)
    return 'SSE' if degree.between?(146.25, 168.75)
    return 'S' if degree.between?(168.75, 191.25)
    return 'SSW' if degree.between?(191.25, 213.75)
    return 'SW' if degree.between?(213.75, 236.25)
    return 'WSW' if degree.between?(236.25, 258.75)
    return 'W' if degree.between?(258.75, 281.25)
    return 'WNW' if degree.between?(281.25, 303.75)
    return 'NW' if degree.between?(303.75, 326.25)
    return 'NNW' if degree.between?(326.25, 348.75)
  end
end
