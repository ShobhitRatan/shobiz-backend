class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :reviews
  has_many :reviews 
end
