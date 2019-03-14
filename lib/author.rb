require 'pry'
class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select{|post| post.author_name=self}
  end

  def add_post(post)
    # binding.pry
    post.author= self
  end

  def add_post_by_title(post)
    # binding.pry

    add_post(Post.new(post))
    # binding.pry
  end

  def self.post_count
    # binding.pry
    Post.all.count
  end
end
