module Mutations
  class CreateReview < BaseMutation
    # TODO: define return fields
    field :review, Types::ReviewType, null: false

    # TODO: define arguments
    argument :restaurant_id, ID, required: true
    argument :rating, Integer, required: true
    argument :content, String, required: true

    # TODO: define resolve method
    def resolve(restaurant_id:, rating:, content:)
      user = context[:logged_in_user]
      user.reviews.create(restaurant_id: restaurant_id, rating: rating, content: content)
    end
  end
end
