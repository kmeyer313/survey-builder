class CourseSurvey < ActiveRecord::Base
  belongs_to :course
  belongs_to :survey
end