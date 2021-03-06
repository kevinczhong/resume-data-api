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
degrees = ["BSc in Theoretical Physics", "BA in English Literature", "BComm in Financial Economics", "BEng in Civil Engineering"]

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

  user = User.create!(name: first_name, email: email, password: "password", password_confirmation: "password")

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
    photo: "#{Faker::LoremPixel.image}",
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

  no_educations = rand(1..5)
  no_educations.times do
    start_date = Faker::Date.between(from: 10.years.ago, to: Date.today)
    end_date = Faker::Date.between(from: start_date, to: Date.today)
    Education.create(
      student_id: student.id,
      end_date: end_date,
      start_date: start_date,
      university_name: Faker::University.name,
      degree: degrees.sample,
      details: "#{Faker::Quotes::Shakespeare.hamlet_quote}",
    )
  end

  no_experiences = rand(1..5)
  no_experiences.times do
    start_date = Faker::Date.between(from: 10.years.ago, to: Date.today)
    end_date = Faker::Date.between(from: start_date, to: Date.today)
    Experience.create(
      student_id: student.id,
      end_date: end_date,
      start_date: start_date,
      job_title: "#{Faker::Company.profession}",
      company_name: "#{Faker::Company.name}",
      details: "#{Faker::Company.bs}",
    )
  end

  Capstone.create(
    student_id: student.id,
    name: "#{Faker::Science.tool}",
    description: "#{Faker::Hacker.say_something_smart}",
    url: "#{Faker::Internet.domain_name}",
    screenshot: "#{Faker::LoremPixel.image}",
  )
end
