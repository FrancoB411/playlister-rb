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
    @artists.uniq
  end
  
  def name
    @name
  end
  
  def songs
    all_songs_with_genres = Song.songs.keep_if { |i| i.genre }
    songs_with_this_genre = all_songs_with_genres.keep_if { |i| i.genre.name = self.name}
  end
end