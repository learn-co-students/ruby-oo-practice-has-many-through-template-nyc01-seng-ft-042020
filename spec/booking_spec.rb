require 'spec_helper'
#  - Get a list of all Bookings √
describe 'Booking' do
  describe '#all'   do
  it 'know all bookings that have been created' do
    guest2 = Guest.new('Fred', 5)
     room2 = Room.new('King Room')

     booking2 = guest2.new_booking(room2, 1000)
       expect(Booking.all).to include(booking2)
     end
   end

   describe "#new" do
  it "initializes with a guest, room, and price" do
    guest2 = Guest.new('Arnold' ,6)
     room2 = Room.new('King Room')

    expect{Booking.new(guest2, room2, 1000)}.to_not raise_error
  end
end

describe "#guest" do
  it "belongs to a room, knows every guest" do
    guest1 = Guest.new("The Guest", 7)
    room1 = Room.new("Presidential Suite")
    booking = guest1.new_booking(room1, 1000)
    expect(booking.guest).to eq(guest1)
  end
end

describe "#room" do
  it "belongs to a guest" do
    guest1 = Guest.new("The Guest" ,3)
    room1 = Room.new("Presidential Suite")
    booking = guest1.new_booking(room1, 1000)
    expect(booking.room).to eq(room1)
  end
end

end
