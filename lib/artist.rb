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
    #get all songs from songs class
    #iterate through songs
    #take out songs with the same artist
    #return that array
    Song.all.select do |song|
      song.artist == self
    end
  end



end
