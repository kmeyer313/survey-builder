class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string      :survey_title, null: false
      t.text        :survey_description
      t.integer     :question_count
      t.integer     :submissions_allowed
      t.boolean     :anonymous_submission
      t.boolean     :faculty_access
      t.datetime    :created_at, null: false
      t.datetime    :updated_at, null: false
      t.datetime    :published_at
    end
  end
end
