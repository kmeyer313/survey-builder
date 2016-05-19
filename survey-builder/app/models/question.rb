class Question < ActiveRecord::Base
  has_many :responses
  has_many :survey_questions
  has_many :surveys, through: :survey_questions
  has_many :course_surveys, through: :surveys
  has_many :courses, through: :course_surveys
  has_many :user_courses, through: :courses
  has_many :users, through: :user_courses
end