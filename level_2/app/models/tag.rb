class Tag < ApplicationRecord
  has_many :messages
  validates :name, inclusion: %w[urgent secret rigolo]
end
