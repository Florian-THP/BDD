class AddSenderToPrivateMessages < ActiveRecord::Migration[7.2]
  def change
    add_reference :private_messages, :sender, foreign_key: { to_table: :users }
  end
end
