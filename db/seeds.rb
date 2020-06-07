# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Language.destroy_all
# User.destroy_all

User.create!(
  name: "Shogo",
  email: "shogo@gmail.com",
  password: "123456"
)

Language.create!(
  name: "English"
)

Language.create!(
  name: "Spanish"
)

Language.create!(
  name: "Japanese"
)


# User faker to add words etc
