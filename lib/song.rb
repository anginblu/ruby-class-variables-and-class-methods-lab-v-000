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
    @@artists << @artist
    if @@artists.include?("#{@artist}") == false
      @@artist_count[@artist] = 1
    else
      @@artist_count[@artist] = @@artist_count[@artist] + 1
    end

    @genre = genre
    @@genres << @genre
    if @@genres.include?("#{@genre}") == false
      @@genre_count[@genre] = 1
    else
      @@genres << @genre
      @@genre_count[@genre] = @@genre_count[@genre] + 1
    end

    @@count += 1

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
