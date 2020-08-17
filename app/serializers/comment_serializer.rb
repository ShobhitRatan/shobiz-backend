class CommentSerializer < ActiveModel::Serializer
  attributes :id, :review_id, :content, :likes
  belongs_to :review 
end
