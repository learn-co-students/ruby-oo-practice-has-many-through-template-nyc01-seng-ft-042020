#class for Model2 goes here
#Feel free to change the name of the class
class Ride
  attr_reader :driver, :passenger #this is to get the driver of that ride instance. We call it on the ride instance 
  @@all = []
  def initialize(ride_id, driver, passenger)
    @ride_id = ride_id
    @driver = driver 
    @passenger = passenger
    Ride.all << self 
  end 

  def self.all #we need to return an array of all instances of the Ride class 
    @@all 
  end 

  #write a  method that pulls the driver's object ID


end
