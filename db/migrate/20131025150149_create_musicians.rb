class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :genre
      t.string :location

      t.timestamps
    end
  end
end
