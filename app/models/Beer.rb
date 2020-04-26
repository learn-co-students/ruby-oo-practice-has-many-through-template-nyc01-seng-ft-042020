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

    #find highest abv_beer
    def self.strongest_beer
        max_abv = @@all.map {|beer| beer.abv}.max
        @@all.find {|beer| beer.abv == max_abv}
    end

    #directions
    def self.what_to_order_and_where_to_go
        "Go to #{strongest_beer.brewery.location} and order #{get_crunk} that is #{strongest_beer.abv}%."
    end

    #find beer name with highest abv
    def self.get_crunk
        max_abv = @@all.map {|beer| beer.abv}.max
        @@all.find {|beer| beer.abv == max_abv}.name
    end



end
