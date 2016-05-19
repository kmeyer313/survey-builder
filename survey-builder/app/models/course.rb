class Course < ActiveRecord::Base
  has_many :user_courses
  has_many :users, through: :user_courses
  has_many :course_surveys
  has_many :surveys, through: :course_surveys
  has_many :survey_questions, through: :surveys
  has_many :questions, through: :survey_questions
  has_many :responses, through: :questions
end