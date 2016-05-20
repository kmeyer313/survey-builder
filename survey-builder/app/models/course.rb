class Course < ActiveRecord::Base
  belongs_to :user
  has_many :surveys
  has_many :questions, through: :surveys

  validates :course_title, presence: true
end