class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :climb_id, :user

end
