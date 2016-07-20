class CreateSandwichingredients < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwichingredients do |t|

      t.timestamps
    end
  end
end
