require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ted = Passenger.new("Ted")
alice = Passenger.new("Alice")
sam = Driver.new("Sam")
taylor = Driver.new("Taylor")
ride1 = Ride.new(1, sam, alice)
ride2 = Ride.new(2, sam, ted)
ride3 = Ride.new(3, taylor, alice)

Ride.all
Driver.all
Driver.average_ratings
Passenger.all
Passenger.average_ratings

sam.rides
taylor.rides
alice.rides
ted.rides

sam.passengers
taylor.passengers

alice.give_driver_rating(1, 5)
ted.give_driver_review(2, "He smelled.")
sam.give_passenger_rating(1, 5)
sam.give_passenger_review(2, "He barfed in my car.")

alice.reviews
ted.reviews
sam.reviews
sam.my_ratings 
sam.average_rating
# alice.my_ratings
# ted.my_ratings
# ted.my_ratings 
# ted.average_rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
