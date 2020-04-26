class Guest
  attr_accessor :name, :length_of_stay

  def initialize(name, length_of_stay)
   @name = name
   @length_of_stay = length_of_stay
  end

  def all
    Booking.all.select { |booking| booking.guest }
  end

  def upgrade_room(amount)
    Booking.all.collect{ |booking| booking.guest == self ? booking.price += amount : nil }.compact.join.to_i
  end

  def room_total
    Booking.all.collect{ |booking| booking.guest == self ? booking.price : nil }.compact.join.to_i
  end

  def bookings
    Booking.all.collect{ |booking| booking.guest == self ? booking : nil }.compact
  end

  def new_booking (room, price)
    Booking.new(self, room, price)
  end

  def rooms
   self.bookings.collect{ |booking| booking.room}
  end


end
