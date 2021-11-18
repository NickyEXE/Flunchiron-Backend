class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :restaurants, through: :reviews
  validates :zip_code, presence: true

end
