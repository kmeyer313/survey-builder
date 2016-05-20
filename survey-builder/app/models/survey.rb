class Survey < ActiveRecord::Base
  belongs_to :course
  has_many :questions, dependent: :destroy
  has_many :responses, through: :questions

  accepts_nested_attributes_for :questions, reject_if: lambda { |a| a[:question_text].blank? }, allow_destroy: true
  accepts_nested_attributes_for :responses, reject_if: lambda { |a| a[:question_text].blank? }, allow_destroy: true

  validates :survey_title, presence: true


  def survey_to_hash
    return self.attributes
  end

end
