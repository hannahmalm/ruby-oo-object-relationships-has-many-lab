require 'pry'
class Author
attr_accessor :name, :posts, :title
  def initialize(name)
  @name = name
  end 
  
  #get a list of all the songs from the song class 
  #self is the Author instance 
  def posts
    Post.all.select do |posts|
    posts.author = self 
  end 
  end 
  
  def add_post(posts)
    # Add the authors name to the post - the post itself and the title of the post 
    posts.author = self 
    posts.title = self 
  end 
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end 

  def self.post_count
    # Song.all
   Post.all.count 
  end 
end 