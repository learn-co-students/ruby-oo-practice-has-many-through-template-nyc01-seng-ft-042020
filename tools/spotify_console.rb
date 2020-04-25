require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# DEPRECATED ----
# big_thief = Artist.new("Big Thief")
# fionn_regan = Artist.new("Fionn Regan")
# masterpiece = Song.new("Masterpiece")
# paul = Song.new("Paul")
# abacus = Song.new("Abacus")
# indie_folk = Genre.new("Indie Folk")
# #masterpiece_by_big_thief
# #the_end_of_history_by_fionn_regan

# Artist.all
# Song.all
# Genre.all
# #Album.all

# big_thief.songs
# big_thief.average_song_duration
# masterpiece.add_lyrics("Years, days, makes no difference to me babe.")
# masterpiece.add_lyrics("You look exactly the same to me.")
# masterpiece.get_lyrics
# masterpiece.duration
# #indie_folk.artist = "Big Thief"
# #indie_folk.artist = "Fionn Regan"
# #indie_folk.artists #=> ["Big Thief", Fionn Regan]
# #masterpiece_by_big_thief.songs
# #masterpiece_by_big_thief.total_song_duration
# #indie_folk.songs
# #indie_folk.artists

binding.pry
0 #leave this here to ensure binding.pry isn't the last line