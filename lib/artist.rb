class Artist
  attr_accessor :name, :songs, :genres

  @@artists = []
  
  def initialize
    @@artists << self
    @songs = []
    @genres = []
  end
  
  def Artist.count
    @@artists.count
  end
  
  def Artist.reset_artists
    @@artists = []
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
     @genres << song.genre
    end
  end
  
end
  