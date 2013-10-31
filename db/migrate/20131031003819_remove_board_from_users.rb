class RemoveBoardFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :board, :string
  end
end
