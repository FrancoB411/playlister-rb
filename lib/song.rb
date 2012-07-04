class Song
  attr_accessor :name, :genre, :artists
  
  @@songs = []
  
  def initialize
    @@songs << self
    @artists = []
  end
  
  def Song.songs
    @@songs
  end
  
  def self.genre= (genre)
    self.genre = genre
  end

  def Song.reset_songs_count
    @@songs = []
  end
  
  def Song.reset_artists
    artists = []
  end
  

end
  