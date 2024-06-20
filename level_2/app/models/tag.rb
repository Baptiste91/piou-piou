class Tag < ApplicationRecord
  TAGS = %w[urgent secret rigolo]
  has_many :messages
  validates :name, inclusion: TAGS
end
