#class for Model2 goes here
#Feel free to change the name of the class

class Driver
    attr_reader :name
    attr_accessor :rating, :reviews

    @@all = []
    @@all_ratings = []

    def initialize (name)
        @name = name
        @rating = rating
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
        #I need a way to remove nils from an array
       @@all_ratings.sum / @@all_ratings.count


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
            my_ride.select {|ride| ride.passenger.rating=(rating)}
        else
            "Invalid entry"
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

end

# # DEPRECATED ----
# class Song
#     attr_accessor :name

#     @@all = []

#     def initialize (name)
#         @name = name
#         @duration = duration
#         @lyrics = []
#         Song.all << self
#     end

#     def self.all
#         @@all
#     end

#     def add_lyrics (lyrics)
#         @lyrics << lyrics
#     end

#     def get_lyrics 
#         @lyrics
#     end

#     def duration
#     end

# end
