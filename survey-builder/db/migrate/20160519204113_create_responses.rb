class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references  :survey, null: false
      t.references  :question, null: false
      t.references  :user, null: false
      t.text        :response_text

      t.timestamps(null: false)
    end
  end
end
