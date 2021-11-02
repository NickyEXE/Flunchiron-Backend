class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :kind_of_food
end
