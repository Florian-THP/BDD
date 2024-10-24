class User < ApplicationRecord
  has_many :gossips
  belongs_to :city
  has_many :sent_private_messages, class_name: 'PrivateMessage', foreign_key: 'sender_id'
  has_and_belongs_to_many :received_private_messages, class_name: 'PrivateMessage'
end
