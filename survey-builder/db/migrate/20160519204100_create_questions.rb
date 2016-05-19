class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text      :question_text, null: false
      t.boolean   :required, null: false
      t.string    :question_type, null: false
      t.integer   :position

      t.timestamps(null: false)
    end
  end
end
