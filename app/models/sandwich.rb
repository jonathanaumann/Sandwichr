class Sandwich < ApplicationRecord
	has_many :sandwichingredients
	has_many :ingredients, through: :sandwichingredients, after_add: :add_calories

	def add_calories(argument)
		self.total_calories += argument.calories
		save		
	end
end
