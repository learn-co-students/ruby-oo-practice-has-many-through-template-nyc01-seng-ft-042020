require 'pry'

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

    def self.all_reviews
        @@all_reviews
    end

    def self.average_ratings
        non_nil_ratings = @@all_ratings.select {|element| element != nil}
        
        if non_nil_ratings.count > 0
            non_nil_ratings.sum / non_nil_ratings.count
        else 
            0
        end
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

    def give_passenger_review (hash)
        ride_id = hash[:ride_id]
        review = hash[:review]
        rating = hash[:rating]
        this_ride = Ride.all.find {|ride| ride.id == ride_id}
        passenger = this_ride.passenger

        Review.new(ride_id, passenger, self, review, rating)
        
        #update driver rating
        if rating > 0.0 && rating < 5.1
            this_ride.passenger.ratings << rating
        else
            raise "Invalid entry"
        end

        #write review
        this_ride.passenger.reviews << review

    end

    def average_rating
        if ratings.count > 0
            ratings.sum / ratings.count
        else nil
        end
    end

    def reviews_given
        Review.all.select {|review| review.giver == self}
    end

    def who_reviewed_me
        Review.all.select {|review| review.recipient == self}.each {|review| review.giver}
    end

end
