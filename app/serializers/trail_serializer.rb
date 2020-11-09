class TrailSerializer
  include FastJsonapi::ObjectSerializer
  set_id { nil }
  attributes :location, :forecast, :trails
end
