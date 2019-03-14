require 'pry'
class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select{|song| song.artist_name=self}
  end

  def add_song(song)
    # binding.pry
    song.artist= self
  end

  def add_song_by_name(song)
    # binding.pry

    add_song(Song.new(song))
  end

  def self.song_count
    # binding.pry
    Song.all.count
  end

end
