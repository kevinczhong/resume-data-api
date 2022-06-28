require "faker"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do
  first_name = "#{Faker::Name.first_name}"
  last_name = "#{Faker::Name.last_name}"
  email = first_name + last_name + "@test.com"
  linkedin = "linkedin.com/" + first_name + last_name
  github = "github.com/" + first_name + last_name

  student = Student.create(first_name: first_name, last_name: last_name, email: email, phone_number: "#{Faker::PhoneNumber.phone_number}", short_bio: "#{Faker::Quote.famous_last_words}", linkedin_url: linkedin, twitter_handle: "#{Faker::Twitter.user.name}", personal_website: )
end
