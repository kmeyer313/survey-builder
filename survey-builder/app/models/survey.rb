class Survey < ActiveRecord::Base
  has_many :survey_questions
  has_many :questions, through: :survey_questions, dependent: :destroy
  has_many :responses, through: :questions

  belongs_to :course
  belongs_to :user

  accepts_nested_attributes_for :questions, reject_if: lambda { |a| a[:question_text].blank? }, allow_destroy: true

  validates :survey_title, presence: true

  # has_many :course_surveys
  # has_many :courses, through: :course_surveys
  # has_many :user_courses, through: :courses
  # has_many :users, through: :user_courses
end
