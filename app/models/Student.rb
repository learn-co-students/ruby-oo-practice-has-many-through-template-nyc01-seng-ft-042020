#class for Model2 goes here
#Feel free to change the name of the class
class Student

    attr_accessor :name, :budget

    @@all = []

    def initialize(name)
        @name = name
        @budget = 300
        @@all << self
    end

    def self.all
        @@all
    end

    def clubs
        Membership.all.select do |club|
            # binding.pry
            club.student == self
            # binding.pry
        end
    end

    def clubs_list
        clubs.map do |list|
            list.club.name
        end
    end


    def cost?
        cost = clubs.map do |club|
            # binding.pry
            club.cost
            # binding.pry
        end
        if  cost[0] >= self.budget
            # binding.pry
            return "This membership is too expensive for me."
        else
            return "Yay, I can continue my membership!"
        end
    end

    #not complete. currently can only check for the first club
    # does not factor in for if bully stole the money student would no longer meet membership requirements.



    def bully
        if self.name[0,1] == "J"
            # binding.pry
            self.budget -= 150
            # binding.pry
            return "The bully stole half of my money!"
        else
            return "AHH i'm running away!"
        end
    end

    def bullied
        if bully == true
            self.cost?
        end
    end


end


# list of all students
# list of all students in a club
# list of all the names of the students in a club
# check the cost of a membership to see if a student can join