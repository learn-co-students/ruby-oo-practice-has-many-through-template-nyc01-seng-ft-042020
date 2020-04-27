class Type
  
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        Type.all << self
    end

    # get list of all beers in a brewery (example of how to run a method on an object outside of it's instance)
    # def beers(brewery)
    #     Beer.all.select { |beer| beer.brewery == brewery }
    # end

    # get list of all types in a brewery
    def types
        Beer.all.select { |beer| beer.type == self }
    end

    # get list of all names of types in a brewery
    def types_names
        types.map {|type| type.name}
    end

    # get list of all types
    def self.all
        @@all
    end

end
