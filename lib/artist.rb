class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        self.name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        @songs << song
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find { |artist| artist.name == name }
    end

    # def self.create_by_name(name)
        
    # end

    def self.find_or_create_by_name(name)
        # how many concerns does this have?

        # find an artist and return the artist "if" it exist
        # if artist = self.find_by_name(name)
        #     artist
        #     # return a found artist
        # # otherwise
        # else
        #     Artist.new(name)
        #     # we return a new artist
        # end

        artist = self.find_by_name(name)
        artist ? artist : Artist.new(name)
    end

    def print_songs
        self.songs.each do |song|
            puts song.name
        end
    end
end