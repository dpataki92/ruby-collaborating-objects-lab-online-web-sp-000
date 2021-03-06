class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    artist_and_song = filename.split(" - ")
    song = Song.new(artist_and_song[1])
    song.artist_name=(artist_and_song[0])
    song
  end

  def artist_name=(str_art_name)
    artist = Artist.find_or_create_by_name(str_art_name)
    artist.add_song(self)
  end

end
