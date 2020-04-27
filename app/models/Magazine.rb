#class for Model3 goes here
#Feel free to change the name of the class
class Magazine
    attr_reader :magazine

    @@all = []

    def initialize(magazine)
        @magazine = magazine
        Magazine.all << self
    end

    def self.all
        @@all
    end

    def subscriptions
        Subscription.all.select do |subscription|
            subscription.title == self
        end
    end

    def subscribers_name
        subscriptions.map do |subscriber|
            binding.pry
            subscriber.person.name
        end
    end

    def average_subscriptions
        subscriptions.count/Subscription.all.count
    end

end
