class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string      :survey_title
      t.text        :survey_description
      t.boolean     :submissions_allowed
      t.boolean     :anonymous_submission
      t.boolean     :faculty_access
      t.integer     :question_count
      t.references  :course

      t.datetime    :created_at, null: false
      t.datetime    :updated_at, null: false
      t.datetime    :published_at
    end
  end
end
