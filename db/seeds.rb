# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
2.times do
  Restaurant.create!(name: Faker::FunnyName.name, address: Faker::Address.city, category: "chinese")
  Restaurant.create!(name: Faker::FunnyName.name, address: Faker::Address.city, category: "italian")
  Restaurant.create!(name: Faker::FunnyName.name, address: Faker::Address.city, category: "japanese")
  Restaurant.create!(name: Faker::FunnyName.name, address: Faker::Address.city, category: "french")
  Restaurant.create!(name: Faker::FunnyName.name, address: Faker::Address.city, category: "belgian")
end

puts "Finished!"
