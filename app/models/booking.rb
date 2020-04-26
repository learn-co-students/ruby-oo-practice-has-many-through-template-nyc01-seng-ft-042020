class Booking
  @@all = []
  attr_accessor :guest, :room, :price


  def initialize(guest, room, price)
   @guest = guest
   @room = room
   @price = price
   Booking.all << self
  end

  def self.all
    @@all
  end

  def all
    Booking.all
  end


end
