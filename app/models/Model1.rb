#class for Model1 goes here
#Feel free to change the name of the class

class Driver 
  
  def initialize(name)
    @name = name 
  end 

  def rides #get the rides that the driver has driven
    Ride.all.select do |ride|
      ride.driver == self # this is calling the driver method on each ride instance, and comparing it to the driver we are calling rides on.
    end 
  end 

  #make a method to find the passengers for the ride that belong to the driver
  def passenger 
    rides.collect do |ride|
      ride.passenger
    end 
  end 

end
