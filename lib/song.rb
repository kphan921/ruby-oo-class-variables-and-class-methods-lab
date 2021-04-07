require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
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

  def self.artist_count
    counter = Hash.new(0)
    @@artists.each { |artist| counter[artist] += 1 }
    counter
  end

  def self.genre_count
    counter = Hash.new(0)
    @@genres.each { |genre| counter[genre] += 1 }
    counter
  end
end
