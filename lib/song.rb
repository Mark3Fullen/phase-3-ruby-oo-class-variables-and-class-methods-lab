class Song

    @@count = 0 

    @@genres = []

    @@artists = []

    attr_accessor :name, :genre, :artist

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        
        @@artists << artist 
        @@genres << genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def genre_count 
        list = {}
        list << @@genres.map {|g| g }
    end

end