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

end