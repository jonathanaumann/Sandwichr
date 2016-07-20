class AddIdsToSnadwichingredients < ActiveRecord::Migration[5.0]
  def change
    add_column :sandwichingredients, :sandwich_id, :integer
    add_column :sandwichingredients, :ingredient_id, :integer
  end
end
