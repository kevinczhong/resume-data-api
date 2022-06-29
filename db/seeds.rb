require "faker"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# first_name = "#{Faker::Name.first_name}"
# p first_name

n = 5
skills = ["Ruby", "Rails", "HTML", "CSS", "Javascript"]

for skill in skills
  skill_name = skill
  Skill.create(
    skill_name: skill_name,
  )
end

n.times do
  first_name = "#{Faker::Name.first_name}"
  last_name = "#{Faker::Name.last_name}"
  email = first_name.downcase + last_name.downcase + "@test.com"
  linkedin = "linkedin.com/" + first_name + last_name
  github = "github.com/" + first_name + last_name
  personal_website = first_name.downcase + last_name.downcase + "/github.io"
  online_resume = first_name.downcase + last_name.downcase + "/resumes.com"

  user = User.create(name: first_name, email: email, password_digest: "password")

  student = Student.create(
    first_name: first_name,
    last_name: last_name,
    email: email,
    phone_number: "#{Faker::PhoneNumber.phone_number}",
    short_bio: "#{Faker::Quote.famous_last_words}",
    linkedin: linkedin,
    twitter_handle: "#{Faker::Twitter.screen_name}",
    personal_website: personal_website,
    online_resume: online_resume,
    github: github,
    photo: "placeholder.jpg",
    user_id: user.id,
  )

  no_skills = rand(1..5)
  index = 1
  no_skills.times do
    StudentSkill.create(
      student_id: student.id,
      skill_id: index,
    )
    index += 1
  end
end
