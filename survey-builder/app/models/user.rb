class User < ActiveRecord::Base
  has_many :courses
  has_many :surveys, through: :courses
  has_many :questions, through: :surveys
  has_many :responses, foreign_key: 'student_id'

  has_secure_password

  validates :account_type, :name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }
end