# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

puts "Cleaning database"
Message.destroy_all
Tag.destroy_all
User.destroy_all

puts "Creating users"
User.create!(email: "test@test.org", username: "Admin", password: "123456")

5.times do
  User.create!(email: Faker::Internet.email, username: Faker::Internet.username, password: "123456")
end

puts "#{User.all.count} users created"

puts "Creating tags"

Tag::TAGS.each do |tag|
  Tag.create!(name: tag)
end

puts "Tags created"

puts "Creating Messages"

10.times do
  Message.create!(content: Faker::Quote.famous_last_words, user: User.limit(1).order("RANDOM()").first, tag: Tag.limit(1).order("RANDOM()").first)
end

puts "#{Message.all.count} messages created"
