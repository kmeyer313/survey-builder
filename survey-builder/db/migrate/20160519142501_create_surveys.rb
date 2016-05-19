class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer     :course_id
      t.string      :title
      t.text        :description
      t.integer     :question_count
      t.integer     :allowed_attempts
      t.boolean     :anonymous_submission
      t.boolean     :faculty_access
      t.timestamps  :published_at

      t.timestamps null: false
    end
  end
end
