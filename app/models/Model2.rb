#class for Model2 goes here
#Feel free to change the name of the class
class Patient
    attr_accessor :name, :ailments, :income
    @@all = []
    def initialize(name, ailments, income)
        @name = name
        @ailments = ailments
        @income = income
        Patient.all << self
    end

    def self.all
        @@all
    end
end
