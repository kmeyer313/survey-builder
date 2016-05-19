class CreateCourseSurveys < ActiveRecord::Migration
  def change
    create_table :course_surveys do |t|
      t.references  :course, null: false
      t.references  :survey, null: false

      t.timestamps(null: false)
    end
  end
end
