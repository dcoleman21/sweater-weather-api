class TrailSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :summary, :difficulty, :location, :distance_to_trail
end
