class ClimbSerializer < ActiveModel::Serializer
  attributes :id, :name, :internal_identifier, :rating, :imgSmallMed, :longitude, :latitude, :location, :comments

  def comments
    self.object.comments.map do |comment|
      {
        comment_id: comment.id,
        email: comment.user.email,
        content: comment.content
        }
    end
  end
end
