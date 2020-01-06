require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(artist)
    #try to find the artist in @@all
    #if it can't find it create a new artist
    new_artist = nil

    all.select do |artist_array|
      if artist_array == artist
        new_artist = artist
      end
    end

    if new_artist != nil
      new_artist.uniq!
    else
      new_artist = Artist.new(artist)
    end
  end



end
