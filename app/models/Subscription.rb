#class for Model2 goes here
#Feel free to change the name of the class
class Subscription
    attr_reader :title, :person, :cost

    @@all = []

    def initialize(person, title, cost)
        @title = title
        @person = person
        @cost = cost
        Subscription.all << self
    end

    def self.all
        @@all
    end


end
