class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_title, null: false
      t.references :user, null: false

      t.timestamps(null: false)
    end
  end
end
