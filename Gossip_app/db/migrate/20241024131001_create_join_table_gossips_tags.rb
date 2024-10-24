class CreateJoinTableGossipsTags < ActiveRecord::Migration[7.2]
  def change
    create_table :gossips_tags, id: false do |t|
      t.belongs_to :gossip
      t.belongs_to :tag
    end
  end
end
