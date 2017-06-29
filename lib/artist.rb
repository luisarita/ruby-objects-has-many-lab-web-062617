class Artist
    attr_accessor :name
    attr_reader :songs

    @@song_count = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.song_count
        @@song_count
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        add_song(new_song)
    end

    def add_song(song)
        song.artist = self
        @songs << song
        @@song_count += 1
    end
    
end