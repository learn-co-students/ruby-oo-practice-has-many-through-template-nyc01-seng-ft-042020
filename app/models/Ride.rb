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
