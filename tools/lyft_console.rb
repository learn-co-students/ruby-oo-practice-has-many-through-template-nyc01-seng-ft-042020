require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ted = Passenger.new("Ted")
alice = Passenger.new("Alice")
sam = Driver.new("Sam")
taylor = Driver.new("Taylor")
ride1 = Ride.new(ride_id: 1, driver: sam, passenger: alice)
ride2 = Ride.new(ride_id: 2, driver: sam, passenger: ted)
ride3 = Ride.new(ride_id: 3, driver: taylor, passenger: alice)

Ride.all
Driver.all
Passenger.all

sam.rides
taylor.rides
alice.rides
ted.rides

sam.passengers
taylor.passengers

alice.give_driver_review(ride_id: 1, review: "Great driver!", rating: 5)
ted.give_driver_review(ride_id: 2, review: "He smelled.", rating: 1)
sam.give_passenger_review(ride_id: 2, review: "He barfed in my car.", rating: 1)

ted.all_reviews
ted.reviews
ted.ratings
sam.reviews
sam.ratings
sam.average_rating
alice.ratings
ted.ratings
ted.reviews
ted.average_rating
sam.reviews_given
ted.reviews_given
alice.who_reviewed_me

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
