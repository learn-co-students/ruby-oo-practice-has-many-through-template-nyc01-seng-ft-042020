#class for Model1 goes here
#Feel free to change the name of the class
class Doctor
    attr_accessor :name, :field, :cost
    @@all = []
    def initialize(name, field, cost)
        @name = name
        @field = field
        @cost = cost
        Doctor.all << self
    end

    def self.all
        @@all
    end
end
