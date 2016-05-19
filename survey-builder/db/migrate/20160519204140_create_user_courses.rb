class CreateUserCourses < ActiveRecord::Migration
  def change
    create_table :user_courses do |t|
      t.references :user, null: false
      t.references :course, null: false

      t.timestamps(null: false)
    end
  end
end
