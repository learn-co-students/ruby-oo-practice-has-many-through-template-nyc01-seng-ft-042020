class Song
    attr_accessor :name, :duration, :artist

    @@all = []

    def initialize (name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
        @lyrics = []
        Song.all << self
    end

    def self.all
        @@all
    end

    def add_lyrics (lyrics)
        @lyrics << lyrics
    end

    def get_lyrics 
        @lyrics
    end

    def add_to_playlist (playlist)
        PlaylistSong.new(playlist, self)
    end

    def playlistsong
        playlistsong = PlaylistSong.all.select {|playlistsong| playlistsong.song == self}
    end

    def appears_on
        playlistsong.map {|playlistsong| playlistsong.playlist.name}
    end

    def appearances
        playlistsong.count
    end
end