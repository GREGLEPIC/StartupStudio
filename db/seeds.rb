# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do 
    User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::BojackHorseman.quote, city: Faker::Address.city, email: "#{Faker::Name.first_name}@yopmail.com", phone: Faker::Number.number(8), encrypted_password: Faker::Internet.password(10, 20))
end

10.times do 
    Startup.create!(admin_id: rand(1..2), start_date: Faker::Date.forward(23), location: Faker::Address.city, duration: 60, title: Faker::Book.title, description: Faker::SiliconValley.quote, price: Faker::Number.between(1, 990))
end

10.times do
    Founder.create!(stripe_customer_id: rand(1..100), user_id: rand(1..10), startup_id: rand(1..10))
end

