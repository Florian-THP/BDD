class Tag < ApplicationRecord
  has_and_belongs_to_many :gossips #Un gossips peut avoir plusieur tag et le tag peut etre associer a plusieur gossip
end
