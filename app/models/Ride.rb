class Ride
    attr_accessor :id, :driver, :passenger

    @@all = []

    def initialize(hash)
        @id = hash[:ride_id]
        @driver = hash[:driver]
        @passenger = hash[:passenger]
        Ride.all << self
    end

    def self.all
        @@all
    end

end
