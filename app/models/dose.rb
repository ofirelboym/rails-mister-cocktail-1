class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :cocktails
  belongs_to :ingredients

  validates :cocktail, uniqueness: { scope: :ingredient }
end
