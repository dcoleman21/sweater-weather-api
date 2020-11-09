class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  set_id { nil }
  attributes :start_point, :trails, :forecast
end
