class Artist
  attr_accessor :name, :songs, :genres
  @@artists = []
  
  def initialize
    @@artists << self
    @songs = []
    @genres = []
  end
  
  def Artist.count
    @@count
  end
  
  def Artist.reset_artists
    @@count = 0
  end
  
  def Artist.all
    @@artists
  end
  
  def songs_count
    @songs.count
  end
  
  def add_song(song)
    @songs << song
    if song.genre
     self.genres << song.genre
    end
  end
  
  
end