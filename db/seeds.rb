# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  user = User.create!(name: Faker::Hobbit.character)
end

15.times do
  pin = Pin.create!(url_image: Faker::Internet.domain_name, user_id: rand(1..5))
end

15.times do
  comment = Comment.create!(user_id: rand(1..5), pin_id: rand(1..15), content: Faker::HowIMetYourMother.quote)
end
