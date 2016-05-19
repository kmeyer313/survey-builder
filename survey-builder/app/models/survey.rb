class Survey < ActiveRecord::Base
  has_many :survey_questions
  has_many :questions, through: :survey_questions
  has_many :responses, through: :questions

  has_many :course_surveys
  has_many :courses, through: :course_surveys
  has_many :user_courses, through: :courses
  has_many :users, through: :user_courses
end
