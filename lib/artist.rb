class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def songs
    Song.all
  end

  def self.song_count
    Song.all.length
  end

end