class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title,    null: false
      t.string :location, null: false
      t.string :summary,  null: false

      t.timestamps
    end
  end
end
