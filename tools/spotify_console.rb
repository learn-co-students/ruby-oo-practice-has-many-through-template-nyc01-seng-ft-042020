require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

big_thief = Artist.new("Big Thief")
fionn_regan = Artist.new("Fionn Regan")
masterpiece = Song.new("Masterpiece", big_thief, 4)
paul = Song.new("Paul", big_thief, 3)
abacus = Song.new("Abacus", fionn_regan, 5)
indie_folk_playlist = Playlist.new ("Indie Folk Playlist")

Artist.all
Song.all
Playlist.all

masterpiece.add_lyrics("Years, days, makes no difference to me babe.")
masterpiece.add_lyrics("You look exactly the same to me.")
masterpiece.get_lyrics

big_thief.songs
big_thief.average_song_duration

indie_folk_playlist.add_song(masterpiece)
indie_folk_playlist.add_song(paul)
indie_folk_playlist.add_song(abacus)

indie_folk_playlist.songs
indie_folk_playlist.artists
indie_folk_playlist.duration

binding.pry
0 #leave this here to ensure binding.pry isn't the last line