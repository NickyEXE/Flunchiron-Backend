module Mutations
  class CreateReviewMutation < Mutations::BaseMutation
    argument :restaurant_id, ID, required: true
    argument :content, String, required: true
    argument :rating, Integer, required: true

    type Types::ReviewType

    def resolve(restaurant_id: nil, content: nil, rating: nil)
      context[:logged_in_user].reviews.create!(restaurant_id: restaurant_id, content: content, rating: rating)
    end

  end
end
