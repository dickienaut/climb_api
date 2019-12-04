class ClimbSerializer < ActiveModel::Serializer
  attributes :id, :name, :internal_identifier, :rating, :imgSmallMed, :longitude, :latitude, :location, :comments
end
