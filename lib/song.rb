class Song

  attr_accessor name, artist, genre

  @@count = 0
  artists = []
  genres = []
  artist_count = {}
  genre_count = {}

  def initialize(name)
    @name = name
    @@count += 1
  end


end
