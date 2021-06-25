class Post
    attr_accessor :title, :posts, :author
    @@all = []
    
  def initialize(name)
    @posts = posts
    @title = title
    save
  end 
  
  def save
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def author_name 
    self.author.name
  end 
  end 