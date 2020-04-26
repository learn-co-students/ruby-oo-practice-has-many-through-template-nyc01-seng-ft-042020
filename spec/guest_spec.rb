require 'spec_helper'
# **guest**
#
#   - Get a list of all guest √
#
#   - Get a list of all the bookings that a specific guest has √
#
#   - Get a list of all the rooms that a specific guest has a booking to √
#
#   - Upgrades a room from and updates booking price adding 500 √
#
#   - Get the total cost of a specific guest's room √
#
#   - Given a room and a booking cost, books a specific room for a guest √

describe 'Guest' do
  describe '#name' do
    it 'has a name' do
      guest1 = Guest.new('Mr. Jones', 3)
      expect(guest1.name).to eq('Mr. Jones')
  end
end

describe '#new' do
  it 'initializes with a name and a length of stay' do
    new_guest = Guest.new('Mr. Smith', 5)

    expect { Guest.new('Mrs. Robinson', 15) }.to_not raise_error
   end
 end

 describe '#all' do
   it 'gets a list of all other guests' do
   guest1 = Guest.new('Mr. P', 6)
   guest2 = Guest.new('Ms. Roberts', 3)

    room1 = Room.new('Presidential Suite')
    room2 = Room.new('King Suite')

   booking1 = Booking.new(guest1, room1, 1000)
   booking2 = Booking.new(guest2, room2, 800)

   expect(guest1.all).to eq(guest2.all)


 end
end

describe '#upgrade_room' do
  it 'given a upgrade cost argument upgrades a room and adds cost to the price' do
    guest1 = Guest.new('Mr. Lopez', 10)
    guest2 = Guest.new('Mr. Smith', 3)
    guest3 = Guest.new('Mr. Jones', 8)
    room1 = Room.new('Presidential')
    room2 = Room.new('King Suite')
    room3 = Room.new('Queen Suite')

    booking1 = Booking.new(guest1, room1, 1000)
    booking2 = Booking.new(guest2, room2, 800)
    booking3 = Booking.new(guest3, room3, 500)

    expect(guest1.upgrade_room(500)).to eq(1500)
    expect(guest2.upgrade_room(500)).to eq(1300)
    expect(guest3.upgrade_room(500)).to eq(1000)

  end
end

describe '#room_total' do
  it 'gets the total cost of a specific guest\'s room booking' do
    guest1 = Guest.new('Mr. Lopez', 10)
    guest2 = Guest.new('Mr. Smith', 3)
    guest3 = Guest.new('Mr. Jones', 8)
    room1 = Room.new('Presidential')
    room2 = Room.new('King Suite')
    room3 = Room.new('Queen Suite')

    booking1 = Booking.new(guest1, room1, 1000)
    booking2 = Booking.new(guest2, room2, 800)
    booking3 = Booking.new(guest3, room3, 500)

    expect(guest1.room_total).to eq(1000)
    expect(guest2.room_total).to eq(800)


  end
end

 describe '#bookings' do
   it 'returns all bookings associated with this guest' do
     guest1 = Guest.new('Mr. Lopez', 10)
     guest2 = Guest.new('Mr. Smith', 3)
     guest3 = Guest.new('Mr. Jones', 8)
     room1 = Room.new('Presidential')
     room2 = Room.new('King Suite')
     room3 = Room.new('Queen Suite')

     booking1 = Booking.new(guest1, room1, 1000)
     booking2 = Booking.new(guest1, room2, 800)
     booking3 = Booking.new(guest3, room3, 500)
      expect(guest1.bookings).to include(booking1)
      expect(guest1.bookings).to include(booking2)
      expect(guest3.bookings).to include(booking3)
      end
    end

    describe '#new_booking' do
      it 'given a room and a cost, creates a booking' do
         guest1 = Guest.new('The Guest', 4)
         room1 = Room.new('King Room')
         booking1 = guest1.new_booking(room1, 1000)
         expect(guest1.bookings).to include(booking1)
        expect(booking1.guest).to eq(guest1)
  end
end

 describe '#rooms' do
  it 'has many rooms, through bookings' do
       guest1 = Guest.new('The Guest', 6)
        room1 = Room.new('Presidential Suite')
        booking1 = Booking.new(guest1, room1, 1000)
        expect(guest1.rooms).to include(room1)

    end
  end

end
