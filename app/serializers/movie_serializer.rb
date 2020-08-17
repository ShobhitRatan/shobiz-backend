class MovieSerializer < ActiveModel::Serializer
    attributes :id, :title, :language, :overview, :release_date, :image_1, :image_2, :reviews 
    has_many :reviews 
end 