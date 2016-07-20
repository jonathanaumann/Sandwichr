class Ingredient < ApplicationRecord
	has_many :sandwichingredients
	has_many :sandwiches, through: "sandwichingredients"
end
