class Guest
  @@all = []
  attr_accessor :name, :length_of_stay

  def initialize(name)
   @name = name
   Guest.all << self
  end

  def self.all
    @@all
  end

  def my_rooms
   Room.all.select { |e| e.guest == self ? e : nil}.compact
  end

  def get_room(hotel, price_per_night, length_of_stay)
    Room.new(self, hotel, price_per_night, length_of_stay)
  end

  def hotels
     self.my_rooms.map { |e| e.hotel }
  end

end
