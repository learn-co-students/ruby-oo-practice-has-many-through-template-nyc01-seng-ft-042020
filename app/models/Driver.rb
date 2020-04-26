class Driver
    attr_reader :name
    attr_accessor :ratings, :reviews

    @@all = []
    @@all_ratings = []

    def initialize (name)
        @name = name
        @ratings = []
        @reviews = []
        Driver.all << self
        Driver.all_ratings << @rating
    end

    def self.all
        @@all
    end

    def self.all_ratings
        @@all_ratings
    end

    def self.average_ratings
        non_nil_ratings = @@all_ratings.select {|element| element != nil}
        
        if non_nil_ratings.count > 0
            non_nil_ratings.sum / non_nil_ratings.count
        else 
            0
        end

        # if @@all_ratings.each {|element| element = nil}
        #     "Cannot math with nil"
        # else
        #     @@all_ratings.sum / @@all_ratings.count
        # end
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passengers
        rides.map do |ride| 
            ride.passenger
        end
    end

    def give_passenger_rating(ride_id, rating)
        #find instance of passenger through ride
        my_ride = Ride.all.select do |ride|
            ride.id == ride_id
        end

        #update passenger rating
        if rating > 0.0 && rating < 5.1
            my_ride.select {|ride| ride.passenger.ratings << rating}
        else
            raise "Invalid entry"
        end
    end

    def give_passenger_review(ride_id, string)
        #find instance of passenger through ride
        my_ride = Ride.all.select do |ride|
            ride.id == ride_id
        end

        #write review
        my_ride.select {|ride| ride.passenger.reviews << string}
    end

    def average_rating
        if ratings.count > 0
            ratings.sum / ratings.count
        else nil
        end
    end

end
