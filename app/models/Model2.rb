#class for Model2 goes here
#Feel free to change the name of the class
class Ingredient
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name

        Ingredient.all<<self
    end

    def self.all
        @@all
    end
    
    def recipes
        myRecipes = []
        Recipe.all.each do |recipe|
            recipe.steps.length.times do |i|
                if(recipe.steps[i].keys[0]==self)
                    myRecipes<<recipe
                end
            end
        end
        myRecipes
    end
end
