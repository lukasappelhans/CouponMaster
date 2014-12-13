# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

testuser = User.create!(id: 1, email: "test@test.org", password: "password", password_confirmation: "password", admin: false)
User.create!(id: 2, email: "admin@test.org", password: "password", password_confirmation: "password", admin: true)
AbsencePeriod.create!(user_id: 1, startdate: 5.minutes.ago, enddate: 10.days.from_now)
AbsencePeriod.create!(user_id: 1, startdate: 15.days.from_now, enddate: 25.days.from_now)

Product.create!(id: 1, name: "El periodico", description: "Subscribe to el periodico!", price: 5)
Product.create!(id: 2, name: "Promoted magazine", description: "This is a promoted product!", price: 10)
Product.create!(id: 3, name: "La vanguardia", description: "This is a newspaper in spanish!", price: 3)
Product.create!(id: 4, name: "ara.cat", description: "Catalan newspaper!", price: 5)

subscribed = Newspaper.create!(product_id: 1)
subscribed.users << testuser
Newspaper.create!(product_id: 3)
Newspaper.create!(product_id: 4)
Promotion.create!(product_id: 2, startdate: 5.minutes.from_now, enddate: 10.days.from_now)
