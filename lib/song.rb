class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    song = self.new 
    song.save
    song
  end
  
  def self.new_by_name(name)
    named = self.new
    named.name = name
    named
  end 
  
  def self.create_by_name(name)
    named = self.new 
    named.name = name 
    named.save
    named
  end 
  
  def self.find_by_name(name)
    self.all.find {|s| s.name == name}
  end 
end
