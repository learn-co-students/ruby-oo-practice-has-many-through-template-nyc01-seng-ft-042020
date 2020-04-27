require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# create Breweries
brewery1 = Brewery.new("Hopperdoodle", "Philadelphia")
brewery2 = Brewery.new("Frostbite", "New York")
brewery3 = Brewery.new("Refreshness", "Boston")

# create Types
type1 = Type.new("IPA")
type2 = Type.new("Lager")
type3 = Type.new("Blond")

# create Beers
beer1 = Beer.new(brewery1, "Hopster", type1, 9)
beer2 = Beer.new(brewery2, "Crispy Tipsy", type2, 4)
beer3 = Beer.new(brewery3, "Ahhh", type3, 6)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
