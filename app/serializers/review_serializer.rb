class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :likes, :user, :movie 
  belongs_to :movie 
  belongs_to :user 
end
