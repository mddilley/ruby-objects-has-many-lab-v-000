class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @@songs = []
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@songs.count
  end

end
