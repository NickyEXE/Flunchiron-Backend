module Types
  class RestaurantType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :url, String, null: true
    field :lat, Float, null: true
    field :long, Float, null: true
    field :image_url, String, null: true
    field :address, String, null: true
    field :kind_of_food, String, null: true
    field :zip_code, Integer, null: true
    field :yelp_id, String, null: true
    field :cheese, String, null: true
    field :reviews, [ReviewType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

      def cheese
        self.object.name + " cheese"
      end
  end

end
