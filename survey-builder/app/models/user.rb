class User < ActiveRecord::Base
  has_many :user_courses
  has_many :courses, through: :user_courses
  has_many :course_surveys, through: :courses
  has_many :surveys, through: :course_surveys
  has_many :survey_questions, through: :surveys
  has_many :questions, through: :survey_questions
  has_many :responses, through: :questions
end