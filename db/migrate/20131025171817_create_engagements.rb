class CreateEngagements < ActiveRecord::Migration
  def change
    create_table :engagements do |t|
      t.integer :musician_id
      t.integer :user_id
      t.integer :event_id
      t.boolean :status,      null: false
      t.boolean :application, null: false
      t.string :bid,          null: false

      t.timestamps
    end
  end
end
