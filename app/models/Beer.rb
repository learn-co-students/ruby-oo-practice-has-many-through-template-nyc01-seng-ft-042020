class Beer

    attr_accessor :brewery, :name, :type, :abv
    @@all = []

    def initialize(brewery, name, type, abv)
        @brewery = brewery
        @name = name
        @type = type
        @abv = abv
        Beer.all << self
    end

    # get list of all beers
    def self.all
        @@all
    end

    # find highest abv beer 
    def self.strongest_beer
        max_abv = @@all.map {|beer| beer.abv}.max
        @@all.find {|beer| beer.abv == max_abv}
    end

    # directions on how to get crunk
    def self.get_crunk_directions
        "Go to #{strongest_beer.brewery.location} and order a #{get_crunk} that is a #{strongest_beer.abv}% #{strongest_beer.type.name}."
    end

    # find beer name with highest abv
    def self.get_crunk
        self.strongest_beer.name
    end

end
