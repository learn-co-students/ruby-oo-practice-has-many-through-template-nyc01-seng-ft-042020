#class for Model1 goes here
#Feel free to change the name of the class
class Recipe
    attr_reader :steps, :name
    @@all = []
    def initialize(name)
        @name = name  
        @steps = []

        Recipe.all<<self
    end

    def self.all
        @@all
    end

    def add_step(ingredient,quantity)
        @steps << {ingredient => quantity}
    end

    def recipe_steps
        @steps.map do |step|
            "#{step.keys[0].name}, #{step[step.keys[0]].num} #{step[step.keys[0]].unit}"

        end
    end
end
