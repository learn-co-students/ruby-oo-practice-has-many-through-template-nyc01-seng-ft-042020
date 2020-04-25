#class for Model1 goes here
#Feel free to change the name of the class

class Ride
    attr_accessor :id, :driver, :passenger

    @@all = []

    def initialize(id, driver, passenger)
        @id = id
        @driver = driver
        @passenger = passenger
        Ride.all << self
    end

    def self.all
        @@all
    end

end

# class Artist
#     attr_accessor :name

#     @@all = []

#     def initialize (name)
#         @name = name
#         Artist.all << self
#     end

#     def self.all
#         @@all
#     end

#     def songs
#     end

#     def average_song_duration
#     end


# end
