
class Room
  attr_accessor :name
  def initialize(name)
    @name = name

  end
  def price
    Booking.all.collect{|booking| booking.room == self ? booking.price : nil}.compact.join.to_i
  end

  def bookings
    Booking.all.collect{ |booking| booking.room == self ? booking : nil}.compact
  end

  def guests
    Booking.all.collect{ |booking| booking.room == self ? booking.guest : nil}.compact
  end

  def combined_booking_duration
    Booking.all.collect{ |booking| booking.room == self ? booking.guest.length_of_stay : nil}.compact.sum
  end

  def guests_names
    Booking.all.collect{ |booking| booking.room == self ? booking.guest.name : nil}.compact
  end

  def new_booking(guest, cost)
    Booking.new(guest, self, cost)
  end

  def rooms
    Booking.all.collect{ |booking| booking.room}
  end

  def guest_lenght_of_stay
    Booking.all.collect{ |booking| booking.room == self ? booking.guest.length_of_stay : nil}.compact.join.to_i
  end

  def cost
   self.price  * self.guest_lenght_of_stay
  end


end
