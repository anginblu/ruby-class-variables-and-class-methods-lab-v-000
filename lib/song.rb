class Song

  attr_accessor artist, genre

  @@count = 0
  artists = []
  genres = []
  artist_count = {}
  genre_count = {}

  def initialize
    @@count += 1
  end


end
