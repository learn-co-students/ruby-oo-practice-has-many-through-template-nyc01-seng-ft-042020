require 'spec_helper'
# **Room**
#
#   - Get a list of all rooms √
#
#   - Get a list of all bookings at a specific Room  √
#
#   - Get a list of all the Guests that have a booking to a specific Room √
#
#   - Get a list of the names of all Guests that have a booking to that Room √
#
#   - Get the combined lift total of every Guest has a booking to that Room √


describe 'Room' do
  describe '#name' do
    it 'has a name' do
      room1 = Room.new('Presidential Suite')
      expect(room1.name).to eq('Presidential Suite')
  end
end

describe '#new' do
  it 'new does not raise an error, initializes with a name' do
    new_room = Room.new('Presidential Suite')
    expect { Room.new('NEW Room') }.to_not raise_error

   end
 end

 describe '#bookings' do
   it 'returns all bookings associated with this room' do
     guest1 = Guest.new('The Guest', 5)
     guest2 = Guest.new('Arnold', 7)
      room1 = Room.new('Presidential Suite')
      room2 = Room.new('King Room')
      booking1 = Booking.new(guest1, room1, 1000)
      booking2 = Booking.new(guest2, room2, 500)

      expect(room1.bookings).to include(booking1)
      expect(room2.bookings).to include(booking2)
      end
    end

    describe '#guests' do
      it 'returns a list of all guests associated with this room' do
        guest1 = Guest.new('The Guest', 9)
        guest2 = Guest.new('Arnold', 3)
        guest3 = Guest.new('Luis', 4)
         room1 = Room.new('Presidential Suite')
         room2 = Room.new('King Room')
         booking1 = Booking.new(guest1, room1, 1000)
         booking2 = Booking.new(guest2, room2, 500)
         booking3 = Booking.new(guest3, room2, 500)

         expect(room1.guests).to include(guest1)
         expect(room2.guests).to include(guest2)
          expect(room2.guests).to include(guest3)
       end
     end

     describe '#combined_booking_duration' do
       it 'returns the combined booking duration of every guest that has a booking to this room' do
         guest1 = Guest.new('The Guest', 10)
         guest2 = Guest.new('Arnold', 20)
          room1 = Room.new('Presidential Suite')
          room2 = Room.new('King Room')
          booking1 = Booking.new(guest1, room1, 1000)
          booking2 = Booking.new(guest2, room1, 100)

          expect(room1.combined_booking_duration).to eq(30)
          expect(room2.combined_booking_duration).to eq(0)
        end
      end

      describe '#guests_names' do
        it 'returns a list of all guest names associated with this room' do
          guest1 = Guest.new('The Guest', 5)
          guest2 = Guest.new('Arnold', 8)
          guest3 = Guest.new('Peter', 8)
           room1 = Room.new('Presidential Suite')
           room2 = Room.new('King Room')
           booking1 = Booking.new(guest1, room1, 1000)
           booking2 = Booking.new(guest2, room2, 500)
          booking3 = Booking.new(guest3, room2, 500)

           expect(room1.guests_names).to include(guest1.name)
           expect(room2.guests_names).to include(guest2.name)
            expect(room2.guests_names).to include(guest3.name)
         end
       end


    describe '#new_booking' do
      it 'given a guest and a cost, creates a new booking' do
         guest1 = Guest.new('The Guest',7)
         room1 = Room.new('Presidential Suite')
         booking1 = room1.new_booking(guest1, 1000)

         expect(Booking.all).to include(booking1)
        expect(room1.rooms).to include(room1)

       end
      end

 describe '#rooms' do
  it 'gets a list of all rooms' do
       guest1 = Guest.new('The Guest' ,6)
       guest2 = Guest.new('The Guest 2' ,2)
        room1 = Room.new('Presidential Suite')
        room2 = Room.new('King Room')
        booking1 = Booking.new(guest1, room1, 1000)
        booking2 = Booking.new(guest2, room2, 500)

        expect(room1.rooms).to include(room2)
    end
  end

  describe "#price" do
    it "gets room price" do
      guest1 = Guest.new("The Guest", 7)
      room1 = Room.new("Presidential Suite")
      booking = guest1.new_booking(room1, 1000)
      expect(room1.price).to eq(1000)
    end
  end

  describe "#cost" do
    it "gets total cost of stay" do
      guest1 = Guest.new("The Guest", 7)
      room1 = Room.new("Presidential Suite")
      booking = guest1.new_booking(room1, 1000)
      expect(room1.cost).to eq(7000)
    end
  end

  describe "#guest_lenght_of_stay" do
    it "gets the duration of guest stay" do
      guest1 = Guest.new("The Guest", 7)
      room1 = Room.new("Presidential Suite")
      booking = guest1.new_booking(room1, 1000)
      expect(room1.guest_lenght_of_stay).to eq(7)
    end
  end
end
