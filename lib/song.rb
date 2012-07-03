class Song
  attr_accessor :name, :genre
  
  @@songs = []
  
  def initialize
    @@songs << self
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
  

end
  