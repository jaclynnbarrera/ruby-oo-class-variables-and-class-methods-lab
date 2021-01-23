require 'pry'

class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
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

# We also need our Song class to be able to keep track of the 
# number of songs of each genre it creates.
    def self.genre_count   
        genre_hash = {}
        @@genres.map do |g|
            if genre_hash.key?(g)
                genre_hash[g] += 1
            else genre_hash[g] = 1
            end
        end
        genre_hash
    end 

    def self.artist_count
        artist_hash = {}
        @@artists.map do |a|
            if artist_hash.key?(a)
                artist_hash[a] += 1
            else artist_hash[a] = 1
            end
        end
        artist_hash
    end
end