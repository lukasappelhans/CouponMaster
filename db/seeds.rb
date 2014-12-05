# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(id: 1, email: "test@test.org", password: "password", password_confirmation: "password", admin: false)
User.create!(id: 2, email: "admin@test.org", password: "password", password_confirmation: "password", admin: true)
AbsencePeriod.create!(user_id: 1, startdate: 5.minutes.ago, enddate: 5.minutes.ago)
AbsencePeriod.create!(user_id: 1, startdate: 3.minutes.ago, enddate: 2.minutes.ago)
