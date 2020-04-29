class Hotel
  @@all = []
  attr_accessor :rating
  attr_reader :name

  def initialize(name, rating)
   @name = name
   @rating = rating
   Hotel.all << self
  end

  def self.all
    @@all
  end

  def get_highest_rated_hotel
   Hotel.all.max_by{ |x| x.rating}
   
  end

end
