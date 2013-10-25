class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.integer :user_id
      t.string :name, null: false
      t.string :email, null: false
      t.string :genre, null: false
      t.string :location, null: false

      t.timestamps
    end
  end
end
