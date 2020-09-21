require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

donut_alley = Bakery.new("Donut Alley")

choco_cake = Dessert.new("Chocolate Fudge Cake",donut_alley)
lemon_cake = Dessert.new("Lemon Cake", donut_alley)

coco_powder = Ingredient.new("Cacao Powder", 125)
butter = Ingredient.new("Butter",150)
milk = Ingredient.new("Milk", 95)
eggs = Ingredient.new("Eggs", 85)
vanilla = Ingredient.new("Vanilla Extract", 35)
fudge = Ingredient.new("Fudge", 250)
flour = Ingredient.new("Flour", 55)
lemon_juice = Ingredient.new("Lemon Juice", 25)
whipped_cream = Ingredient.new("Whipped Cream", 110)
sugar = Ingredient.new("Sugar", 125)
almonds = Ingredient.new("Almonds",60)
choco_fudge = Ingredient.new("Chocolate Fudge", 225)


choco_cake_ingredients = [coco_powder,eggs,butter,milk,vanilla,fudge]
lemon_cake_ingredients = [butter,milk,flour,lemon_juice,whipped_cream,sugar]

donut_cake = Recipe.new("Donut Alley's Chocolate Fudge Cake", choco_cake, choco_cake_ingredients)
donut_lemon = Recipe.new("Donut Alley's Lemon Cake",lemon_cake, lemon_cake_ingredients)


binding.pry
