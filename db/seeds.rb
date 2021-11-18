# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

YelpSearch.new(10001).to_restaurants
User.create(username: "Nicky", password: "guest")
Restaurant.first.reviews.create(user: User.first, rating: 4, content: "This is the first review on this app!")
