class Brewery

    attr_accessor :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        Brewery.all << self
    end

    # get list of all breweries
    def self.all
        @@all
    end

    # # get list of all beers in a brewery (always write the method on the object of the instance you want to run it on!)
    def beers
        Beer.all.select { |beer| beer.brewery == self }
    end

    # get list of all names of beers in a brewery
    def beers_names
        beers.map {|beer| beer.name}
    end

    # get list of all types in a brewery
    def types
        beers.map {|beer| beer.type}
    end

    # average abv of all of the beers in a brewery
    def average_abv
        beers.map {|beer| beer.abv}.sum / beers.length
    end

    # given a beer, a type and an abv, make a new beer for a brewery
    def new_beer(beer, type, abv)
        Beer.new(self, beer, type, abv)
    end

    # get the total number of beers at a brewery
    def total_beers
        beers_names.count
    end

end
