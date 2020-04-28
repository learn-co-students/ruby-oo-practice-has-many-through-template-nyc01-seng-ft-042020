#class for Model3 goes here
#Feel free to change the name of the class
class Passenger

    def initialize(name)
      @name = name
    end
  
    def rides #we have to get the rides that the passenger has written
      Ride.all.select do |ride|
        ride.passenger == self 
      end 
    end 

    def drivers #find the drivers that the passenger has ridden with
      rides.collect do |ride|
        ride.driver
      end 
    end 
    
end
