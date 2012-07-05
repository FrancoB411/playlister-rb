class Genre
  attr_accessor :name, :songs, :artists
  
  @@genres = []
  
  def initialize
    @@genres << self
    @artists =[]
  end
  
  def Genre.all
    @@genres
  end
  
  def Genre.reset_genres
    @@genres = []
  end
  
  def artists
    collect_artists
    @artists
  end
  
  def name
    @name
  end
  
  def songs
    Song.songs.keep_if { |i| i.genre.name = self.name}
  end
  
private

  def artist_has_matching_genres?(artist)
    return false unless artist.genres.any?  
    for genre in artist.genres
      return true if genre.name == self.name
    end
  end
    
  def collect_artists
    for artist in Artist.all
       @artists << artist if artist_has_matching_genres?(artist)
    end
  end
  
end