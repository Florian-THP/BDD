class AddUserIdToGossips < ActiveRecord::Migration[7.2]
  def change
    add_column :gossips, :user_id, :integer
  end
end
