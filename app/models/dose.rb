class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates_associated :cocktail, presence: true
  validates_associated :ingredient, presence: true
  validates :ingredient_id, uniqueness: { scope: :cocktail_id}
end
