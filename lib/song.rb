class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@artist_count2 = {}
  @@genre_count = {}
  @@genre_count2 = {}

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name

    @artist = artist
    if @@artists.include?("#{@artist}") == false
      @@artists << @artist
      @@artist_count[@artist] = 1
    else
      @@artist_count2[@artist] = @@artist_count[@artist] + 1
      @@artist_count[@artist] = @@artist_count2[@artist]
    end

    @genre = genre
    if @@genres.include?("#{@genre}") == false
      @@genres << @genre
      @@genre_count[@genre] = 1
    else
      @@genre_count2[@genre] = @@genre_count[@genre] + 1
      @@genre_count[@genre] = @@genre_count2[@genre]
    end

    @@count += 1

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

end
