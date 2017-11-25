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
      @@artist_count[@artist] = @@artist_count[@artist] + 1
    else
      @@artists << @artist
      @@artist_count2[@artist] = @@artist_count[@artist] + 1
      @@artist_count[@artist] = @@artist_count2[@artist]
    end

    @genre = genre
    if @@genres.include?("#{@genre}") == false
      @@genres << @genre
      @@genre_count[@genre] = 1
    else
      @@genres << @genre
      @@genre_count2[@genre] = @@genre_count[@genre] + 1
      @@genre_count[@genre] = @@genre_count2[@genre]
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
