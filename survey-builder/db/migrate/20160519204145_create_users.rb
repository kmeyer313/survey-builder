class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :account_type
      t.string  :name
      t.string  :email
      t.string  :password_digest

      t.timestamps(null: false)
    end
  end
end
