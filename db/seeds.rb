# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting words"
Word.destroy_all
puts "Deleting languages"
Language.destroy_all
puts "Deleting users"
User.destroy_all

@shogo = User.create!(
  name: "翔吾",
  email: "shogo@gmail.com",
  password: "123456"
)

@english = Language.create!(
  name: "英語",
  user: @shogo
)

Language.create!(
  name: "スペイン語",
  user: @shogo
)

Language.create!(
  name: "日本語",
  user: @shogo
)

30.times do
  Word.create!(
    name: Faker::Verb.base,
    language: @english
  )
end

# User faker to add words etc
