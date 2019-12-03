class ClimbSerializer < ActiveModel::Serializer
  attributes :id, :name, :climb_id, :rating, :stars, :imgSmallMed, :longitude, :latitude, :location, :comments
end
