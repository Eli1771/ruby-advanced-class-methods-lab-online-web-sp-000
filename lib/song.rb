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
  
  def self.find_or_create_by_name(name)
    if !self.find_by_name(name)
      self.create_by_name(name)
    else 
      self.find_by_name(name)
    end
  end
  
  def self.alphabetical
    self.all.sort_by {|s| s.name}
  end
  
  def self.new_from_filename(filename)
    
  end 
  
  def self.create_by_filename 
    
  end 
  
  def self.destroy_all 
    
  end 
end
