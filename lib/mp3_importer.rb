require 'pry'

class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        # Dir["/path/to/search/*"]
        # Dir.entries("your/folder")
        # Dir.glob('path/**/*')
        Dir.entries(self.path)[2..5]
    end

    def import
        # imports the files

        files.each do |filename|
            Song.new_by_filename(filename)
        end
        # creates the songs from a filename
    end
end