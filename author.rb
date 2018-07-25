class Author

  @@all = []
  attr_accessor :author, :title

  def initialize(name, title)
    @name = name
    @title = title
    @@all << self
  end
  def self.all
    @@all
  end

  def books
    Book.all
  end



end
