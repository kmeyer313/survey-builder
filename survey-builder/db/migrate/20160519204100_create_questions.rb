class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text      :question_text
      t.boolean   :required
      t.string    :question_type
      t.integer   :order
      t.references :survey

      t.timestamps(null: false)
    end
  end
end
