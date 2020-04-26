#class for Model3 goes here
#Feel free to change the name of the class
class Quantity
    attr_reader :num, :unit
    @@all = []
    def initialize(num,unit)
        @num = num
        @unit = unit

        Quantity.all<<self
    end

    def self.all
        @@all
    end
  
end
