class CreateJoinTablePrivateMessagesUsers < ActiveRecord::Migration[7.2]
  def change
    create_join_table :private_messages, :users do |t|
      t.index :private_message_id
      t.index :user_id  # Cela représente un destinataire
    end
  end
end
