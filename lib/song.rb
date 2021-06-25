require 'pry' 
class Song
  attr_accessor :artist, :name
  @@all = []
  
def initialize(name)
  @name = name
  @artist = artist
  save
end 

def save
  @@all << self
end 

def self.all
  @@all
end 

def artist_name=(name)
  if (self.artist.nil?)
    self.artist=artist.new(name)
  else 
    self.artist.name=name 
  end   
end 

end 
