class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = [] 
  @@artists = []
  
  def initialize(name, artist, genre)
    @name=name 
    @artist=artist 
    @genre=genre 
    @@count += 1 
    @@genres.push(self.genre)
    @@artists.push(self.artist)
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genres 
    noduplicates = []
    @@genres.each do |genre|
      if !noduplicates.include?(genre)
        noduplicates.push(genre)
      end 
    end 
    noduplicates 
  end 
  
  def self.artists 
    noduplicates = []
    @@artists.each do |artist|
      if !noduplicates.include?(artist)
        noduplicates.push(artist)
      end 
    end 
    noduplicates 
  end 
  
  def self.genre_count 
    genreHash = {}
    @@genres.each do |genre|
      if !genreHash.has_key?("#{genre}") 
        genreHash["#{genre}"] = 1 
      else 
      genreHash["#{genre}"] += 1 
      end 
    end 
    genreHash
  end 
  
  def self.artist_count 
    artistHash = {}
    @@artists.each do |artist|
      if !artistHash.has_key?("#{artist}") 
        artistHash["#{artist}"] = 1 
      else 
        artistHash["#{artist}"] += 1 
      end 
    end 
    artistHash
  end 
  
end 