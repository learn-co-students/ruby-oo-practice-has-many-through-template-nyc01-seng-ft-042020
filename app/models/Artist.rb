require 'pry'

class Artist
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def average_song_duration
        durations = songs.map {|song| song.duration}
        average_duration = (durations.sum.to_f / durations.count.to_f)
        average_duration
    end

    def playlistsong
        playlistsong = PlaylistSong.all.select {|playlistsong| playlistsong.song.artist == self}
    end

    def appears_on
        playlistsong.map {|playlistsong| playlistsong.playlist.name}.uniq
    end

    def appearances
        playlistsong.count
    end

end