class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :responses

  accepts_nested_attributes_for :responses, reject_if: lambda { |a| a[:response_text].blank? }, allow_destroy: true

  validates :question_text, :required, :question_type, presence: true

end