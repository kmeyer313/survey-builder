class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text        :response_text
      t.references  :question
      t.references  :student

      t.timestamps(null: false)
    end
  end
end
