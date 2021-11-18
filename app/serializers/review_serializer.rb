class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :content, :username

  def username
    self.object.user.username
  end

end
