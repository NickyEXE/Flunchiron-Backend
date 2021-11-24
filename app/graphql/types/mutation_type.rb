module Types
  class MutationType < Types::BaseObject
    field :create_review_mutation, mutation: Mutations::CreateReviewMutation
  end
end
