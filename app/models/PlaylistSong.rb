class PlaylistSong

    attr_accessor :playlist, :song

    @@all = []
    
    def initialize (playlist, song)
        @playlist = playlist
        @song = song
        PlaylistSong.all << self
    end

    def self.all
        @@all 
    end

end