module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :restaurants, [RestaurantType], null: false, description: "A List of Restaurants" do
      argument :limit, Integer, required: false
      argument :location, String, required: false
      argument :kind_of_food, String, required: false
    end
    def restaurants(limit: 50, location: nil, kind_of_food: "lunch")
      location ||= context[:logged_in_user].zip_code
      Restaurant.search(location, kind_of_food, limit).eager_load(:reviews).limit(limit)
    end
  end
end
