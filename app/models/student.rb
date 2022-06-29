class Student < ApplicationRecord
  belongs_to :user
  has_many :experiences
  has_many :educations
  has_many :student_skills
  has_many :skills, through: :student_skills
  has_many :capstones
end
