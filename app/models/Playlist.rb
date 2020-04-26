class Playlist
attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @songs = []
        Playlist.all << self
    end

    def self.all
        @@all
    end

    def add_song (song)
        @songs << song
    end

    def songs 
        @songs
    end

    def artists 
        songs.each {|song| song.artist}
    end

    def duration
        durations = songs.map {|song| song.duration}
        total = durations.sum
        total
    end

end