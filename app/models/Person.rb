#class for Model1 goes here
#Feel free to change the name of the class
class Person 
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        Person.all << self
    end

    def self.all
        @@all
    end

    def magazines
        Subscription.all.select do |magazine|
            magazine.person == self
        end
    end

    def magazine_names
        magazines.map do |magazine|
            magazine.title.magazine
        end
    end

    def sign_up(magazine,cost)
        Subscription.new(self, magazine, cost)
    end

    def total_sub_cost_with_discount
        if magazines.count < 2
            magazines.map do |magazine|
                magazine.cost 
            end.sum
        elsif magazines.count >= 2
            total = magazines.map do |magazine|
                magazine.cost
            end
            total.sum*(80/100)
            #not correctly returning final total, needs to be fixed
        end
    end

    def average_sub_by_person
        Subscription.all.count/Person.all.count
        binding.pry
    end

end
