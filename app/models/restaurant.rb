class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  def self.search(location, kind_of_food, limit)
    YelpSearch.new(location, kind_of_food, limit).to_restaurants
  end

end
