class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_title
      t.references :user

      t.timestamps(null: false)
    end
  end
end
