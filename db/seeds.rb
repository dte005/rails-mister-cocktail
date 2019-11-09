# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
data = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
ingredients = JSON.parse(data)

puts 'Creating ingredients'

ingredients.each do |_, item|
  item.each do |chave, _|
    Ingredient.create(name: "#{chave['strIngredient1']}")
  end
end

puts "Created #{Ingredient.count} ingredients"

# puts 'Creating cocktails'

#   10.times do
#     Cocktail.create(name: "#{Faker::Beer.name}")
#   end

# puts "Created #{Cocktail.count} cocktails"