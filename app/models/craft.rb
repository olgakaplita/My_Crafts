class Craft < ApplicationRecord
  validates :przedmiot, presence: true, length: { minimum: 5 }
end
