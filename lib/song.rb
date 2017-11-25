class Song

  attr_accessor name, artist, genre

  @@count = 0
  artists = []
  genres = []
  artist_count = {}
  genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    artists << @artist
    artist_count(@artist) =
    @genre = genre
    if genres.include? @genre == false
      genres << @genre
    end
    genre_
    @@count += 1
  end


end
