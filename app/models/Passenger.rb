#class for Model3 goes here
#Feel free to change the name of the class

class Passenger
    attr_reader :name
    attr_accessor :rating, :reviews

    @@all = []
    @@all_ratings = []

    def initialize (name)
        @name = name
        @rating = rating
        @reviews = []
        Passenger.all << self
        Passenger.all_ratings << @rating
    end

    def self.all
        @@all
    end

    def self.all_ratings
        @@all_ratings
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        rides.map do |ride|
            ride.driver
        end
    end

    def give_driver_rating(ride_id, rating)
        #find instance of driver through ride
        my_ride = Ride.all.select do |ride|
            ride.id == ride_id
        end

        #update driver rating
        if rating > 0.0 && rating < 5.1
            my_ride.select {|ride| ride.driver.rating=(rating)}
        else
            "Invalid entry"
        end
    end

    def give_driver_review(ride_id, string)
        #find instance of driver through ride
        my_ride = Ride.all.select do |ride|
            ride.id == ride_id
        end

        #write review
        my_ride.select {|ride| ride.driver.reviews << string}
    end

end
