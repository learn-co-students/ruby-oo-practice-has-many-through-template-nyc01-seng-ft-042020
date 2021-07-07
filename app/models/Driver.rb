require 'pry'

class Driver
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        Driver.all << self
    end

    def self.all
        @@all
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
        this_ride.passenger.reviews << "#{review} - #{name}"

    end

    def all_reviews
        Review.all.select {|review| review.recipient == self}
    end

    def ratings
        all_reviews.map {|review| review.rating}
    end

    def reviews
        all_reviews.map {|review| review.review}
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
        all_reviews.map {|review| review.giver.name}
    end

end
