class Craft < ApplicationRecord
  validates :przedmiot, presence: true, length: { minimum: 5 }
  has_many :comments
end
