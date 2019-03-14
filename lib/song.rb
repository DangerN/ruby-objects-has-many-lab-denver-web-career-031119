class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name unless artist.nil?
  end

  def artist_name=(artist)
    @artist=artist
  end

end
