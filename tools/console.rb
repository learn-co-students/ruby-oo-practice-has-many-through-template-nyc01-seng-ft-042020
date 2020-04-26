require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

pbj = Recipe.new('Peanut Butter and Jelly Sandwich')
turkey_sandwich = Recipe.new('Turkey and Cheese Sandwich')

bread = Ingredient.new('Bread')
pb = Ingredient.new('Peanut Butter')
jelly = Ingredient.new('Jelly')
turkey = Ingredient.new('Turkey')
cheese = Ingredient.new('Cheese')

one_slice = Quantity.new(1,'slice')
two_slices = Quantity.new(2,'slices')
two_tbs = Quantity.new(2,'tbs')

pbj.add_step(bread,two_slices)
pbj.add_step(pb,two_tbs)
pbj.add_step(jelly,two_tbs)

turkey_sandwich.add_step(bread,two_slices)
turkey_sandwich.add_step(turkey,two_slices)
turkey_sandwich.add_step(cheese,one_slice)


puts "Here are the steps to make a #{pbj.name}"
puts pbj.recipe_steps
puts "Here are the steps to make a #{turkey_sandwich.name}"
puts turkey_sandwich.recipe_steps

puts "Here are all the recipes that contain #{jelly.name}"
puts jelly.recipes


# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
