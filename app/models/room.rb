
class Room
  @@all = []
  attr_accessor :guest, :price_per_night, :length_of_stay
  attr_reader :hotel

  def initialize(guest, hotel, price_per_night, length_of_stay)
    @guest = guest
    @hotel = hotel
    @price_per_night = price_per_night
    @length_of_stay = length_of_stay
    Room.all << self
  end

  def self.all
    @@all
  end

  def total_price
    @price_per_night * @length_of_stay
  end

  def self.all_guest
    Room.all.map { |e| e.guest }
  end

end
