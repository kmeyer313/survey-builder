class Question < ActiveRecord::Base
  has_many :responses, dependent: :destroy
  has_many :survey_questions
  has_many :surveys, through: :survey_questions
  has_many :course_surveys, through: :surveys

  belongs_to :survey
  belongs_to :course
  belongs_to :user

  accepts_nested_attributes_for :responses, reject_if: lambda { |a| a[:response_text].blank? }, allow_destroy: true

  validates :question_text, :required, :question_type, presence: true

  # has_many :courses, through: :course_surveys
  # has_many :user_courses, through: :courses
  # has_many :users, through: :user_courses
end