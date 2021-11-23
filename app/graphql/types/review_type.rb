module Types
  class ReviewType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :restaurant_id, Integer, null: false
    field :rating, Integer, null: true
    field :content, String, null: true
    field :user, UserType, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
