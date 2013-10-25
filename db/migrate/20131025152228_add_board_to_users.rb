class AddBoardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :board, :string
  end
end
