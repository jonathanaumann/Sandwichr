# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

meatball_sub = Sandwich.create(name: "meatball sub", bread_type: "Hogie")
turkey_sub = Sandwich.create(name: "turkey sub", bread_type: "white")
turkey = Ingredient.create(name: "turkey", calories: 200)
meatballs = Ingredient.create(name: "meatballs", calories: 150)
marinara = Ingredient.create(name: "marinara", calories: 50)
parmesan = Ingredient.create(name: "parmesan", calories: 50)
mayo = Ingredient.create(name: "mayo", calories: 70)

meatball_sub.ingredients.push(meatballs)
meatball_sub.ingredients.push(marinara)
meatball_sub.ingredients.push(parmesan)

turkey_sub.ingredients.push(turkey)
turkey_sub.ingredients.push(mayo)

