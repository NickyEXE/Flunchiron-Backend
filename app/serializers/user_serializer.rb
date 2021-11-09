class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :zip_code
end
