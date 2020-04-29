require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("John")
guest2 = Guest.new("Jenniffer")

hotel1 = Hotel.new("Shelby", 3)
hotel2 = Hotel.new('Dream', 3)
hotel3 = Hotel.new('Fountain Bleau', 4)

room1 = Room.new(guest1, hotel1, 300, 7)
room2 = Room.new(guest2, hotel2, 500, 3)

guest1.get_room(hotel2, 1100, 4)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
