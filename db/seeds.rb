# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

25.times do |u|
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    cv: Faker::Lorem.sentence(7),
    ranking: Faker::Number.between(1, 5),
    role: 2
  )
end

2.times do |u|
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    role: 1
  )
end