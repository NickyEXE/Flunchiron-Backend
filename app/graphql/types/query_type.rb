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
    end
    def restaurants(limit: 50)
      Restaurant.eager_load(:reviews).limit(limit)
    end
  end
end
