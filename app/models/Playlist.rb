class Playlist
attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        Playlist.all << self
    end

    def self.all
        @@all
    end

    def add_song (song)
        PlaylistSong.new(self, song)
    end

    def playlistsong
        playlistsong = PlaylistSong.all.select {|playlistsong| playlistsong.playlist == self}
    end

    def songs
        playlistsong.map {|playlistsong| playlistsong.song.name}
    end

    def artists 
        playlistsong.map {|playlistsong| playlistsong.song.artist.name}
    end

    def duration
        playlistsong.map {|playlistsong| playlistsong.song.duration}.sum
    end

end