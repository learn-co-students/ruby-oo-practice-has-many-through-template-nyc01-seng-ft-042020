require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver_1 = Driver.new("John")

passenger_1 = Passenger.new("Fred")

ride_1 = Ride.new(45, driver_1, passenger_1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

