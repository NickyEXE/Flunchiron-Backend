class RestaurantShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :lat, :long, :image_url, :address, :kind_of_food, :zip_code
  has_many :reviews
end
