#class for Model3 goes here
#Feel free to change the name of the class
class Membership

    attr_reader :club, :student, :cost

    @@all = []

    def initialize(club, student, cost)
        @club = club
        @student = student
        @cost = cost
        @@all << self
    end

    def self.all
        @@all
    end

  
end
