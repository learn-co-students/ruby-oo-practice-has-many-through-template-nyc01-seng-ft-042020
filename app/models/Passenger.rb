require 'pry'

class Passenger
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        Passenger.all << self
    end

    def self.all
        @@all
    end

    def self.passenger_names
        Ride.all.map {|ride| ride.passenger.name}
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

    def give_driver_review (hash)
        ride_id = hash[:ride_id]
        review = hash[:review]
        rating = hash[:rating]
        this_ride = Ride.all.find {|ride| ride.id == ride_id}

        driver = this_ride.driver

        Review.new(ride_id, driver, self, review, rating)
        
        #update driver rating
        if rating > 0.0 && rating < 5.1
            this_ride.driver.ratings << rating
        else
            raise "Invalid entry"
        end

        #write review
        this_ride.driver.reviews << "#{review} - #{name}"
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
