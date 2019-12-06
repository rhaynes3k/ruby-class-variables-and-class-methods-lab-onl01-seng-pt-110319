require 'pry'
class Song
  attr_accessor :name, :artist, :genre, :artists, :count, :songs
  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []
  @@g_count = {}
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists.push(artist)
    @@genres.push(genre)
    @@songs.push(name)
    @@count += 1
  end
  
  
  def count
    @@count
  end
  
  def self.count
    @@count
  end 
  
  # def artists
  #   @@artists
  # end
  
  def self.artists
    @@artists.uniq
  end
#binding.pry  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    # ["rap", "pop", "pop]"
    @@genres.each_with_index do |g, i|
      # {}
      # if there is not a key in the hash -> make the value 1
      num = 1
      if !@@g_count.has_key?(g)
        @@g_count[g] = num
      # if the key is already there we need to INCREMENT the value
      else @@g_count[g] = num += 1
      end 
    end
    @@g_count
  
  end
  
#   def artist_count
  
#   end
  
 end 