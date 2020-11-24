require 'pry'
class Song
    attr_accessor :name
    attr_reader :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist=(artist)
        # song.artist = artist
        @artist = artist
        artist.songs << self
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end

    def self.new_by_filename(filename)
        # filename is going to be 'Michael Jackson - Black or White - pop.mp3'
        # creates a new instance of a song from the file that is passed
        artist_name, song_name, genre_name = filename.split(" - ")

        song = Song.new(song_name)
        song.artist_name = artist_name

        # return song object
        song
    end
end