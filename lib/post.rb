class Post

  @@all = []

  def initialize(title, author = nil)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

end
