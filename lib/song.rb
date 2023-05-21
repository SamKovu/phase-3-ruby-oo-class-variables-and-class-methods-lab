require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count=0
    @@genres=[]
    @@artists=[]

    def initialize(name,artist,genre)
        @name,@artist,@genre=name,artist,genre
        @@count+=1
        @@genres << genre
        @@artists << artist
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
        histogram={}
       
        @@genres.each do |genre|
            if histogram.include?(genre)
                histogram[genre]=histogram[genre]+1
            else
                histogram[genre]=1
            end
        end
        
      histogram
    end

    def self.artist_count      
         
        @@artists.tally

    end

        
end