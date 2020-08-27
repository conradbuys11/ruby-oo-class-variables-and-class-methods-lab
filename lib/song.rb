class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        return_hash = {}
        @@genres.each do |genre|
            if return_hash[genre] == nil
                return_hash[genre] = 0
            end
            return_hash[genre] += 1
        end
        return_hash
    end

    def self.artist_count
        return_hash = {}
        @@artists.each do |artist|
            if return_hash[artist] == nil
                return_hash[artist] = 0
            end
            return_hash[artist] += 1
        end
        return_hash
    end
end