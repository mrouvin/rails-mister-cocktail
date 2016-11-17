class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true
  before_destroy do |ingredient|
    raise "error" unless ingredient.doses.nil?
  end
end
