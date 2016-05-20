class Survey < ActiveRecord::Base
  belongs_to :course
  has_many :questions, dependent: :destroy
  has_many :responses, through: :questions

  accepts_nested_attributes_for :questions, reject_if: lambda { |a| a[:question_text].blank? }, allow_destroy: true
  accepts_nested_attributes_for :responses, reject_if: lambda { |a| a[:question_text].blank? }, allow_destroy: true

  validates :survey_title, presence: true

  def question_count
    self.question_count = self.questions.length
  end

  def survey_to_hash
    survey_hash = self.attributes
    survey_hash[:questions] = []
    self.questions.each do |question|
      question_hash = question.attributes
      question_hash[:responses] = []
      question.responses.each do |response|
        question_hash[:responses] << response.attributes
      end
      survey_hash[:questions] << question_hash
    end
    survey_hash
  end

end

# JSON object for a survey
# {
#   "id": 1,
#   "survey_title": "Incoming Student Survey",
#   "survey_description": "A survey to assess your knowledge...",
#   "submissions_allowed": false,
#   "anonymous_submission": true,
#   "faculty_access": true,
#   "question_count": 3,
#   "course_id": 1,
#   "created_id": Fri, 20 May 2016 07:54:10 UTC +00:00,
#   "updated_at": "Fri, 20 May 2016 07:54:10 UTC +00:00,
#   "published_at": nil,
#   "questions": [
#     {
#       "id": 1,
#       "question_text": "How many months of experience...",
#       "required": true,
#       "question_type": "multiple choice",
#       "order": 1,
#       "survey_id": 1,
#       "created_at": Fri, 20 May 2016 07:54:10 UTC +00:00,
#       "updated_at": Fri, 20 May 2016 07:54:10 UTC +00:00,
#       "responses": [
#         {
#           "id": 1,
#           "response_text": "less than a month",
#           "question_id": 1,
#           "student_id": nil,
#           "created_at": Fri, 20 May 2016 07:54:10 UTC +00:00,
#           "updated_at": Fri, 20 May 2016 07:54:10 UTC +00:00
#         }
#         {
#           "id": 2,
#           "response_text": "more than a year",
#           "question_id": 1,
#           "student_id": nil,
#           "created_at": Fri, 20 May 2016 07:54:10 UTC +00:00,
#           "updated_at": Fri, 20 May 2016 07:54:10 UTC +00:00
#         }
#       ]
#     }
#     {
#       "id": 2,
#       "question_text": "Another question...",
#       "required": true,
#       "question_type": "multiple choice",
#       "order": 2,
#       "survey_id": 1,
#       "created_at": Fri, 20 May 2016 07:54:10 UTC +00:00,
#       "updated_at": Fri, 20 May 2016 07:54:10 UTC +00:00,
#       "responses": [
#         {
#           "id": 1,
#           "response_text": "comfortable",
#           "question_id": 2,
#           "student_id": nil,
#           "created_at": Fri, 20 May 2016 07:54:10 UTC +00:00,
#           "updated_at": Fri, 20 May 2016 07:54:10 UTC +00:00
#         }
#         {
#           "id": 2,
#           "response_text": "not bad",
#           "question_id": 2,
#           "student_id": nil,
#           "created_at": Fri, 20 May 2016 07:54:10 UTC +00:00,
#           "updated_at": Fri, 20 May 2016 07:54:10 UTC +00:00
#         }
#       ]
#     }
#   ]
# }