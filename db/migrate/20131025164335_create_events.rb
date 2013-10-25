class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.string :location
      t.string :summary

      t.timestamps
    end
  end
end
