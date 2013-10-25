class CreateEngagements < ActiveRecord::Migration
  def change
    create_table :engagements do |t|
      t.integer :musician_id
      t.integer :user_id
      t.integer :event_id
      t.boolean :status
      t.boolean :application
      t.string :bid

      t.timestamps
    end
  end
end
