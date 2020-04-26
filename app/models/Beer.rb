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

end
