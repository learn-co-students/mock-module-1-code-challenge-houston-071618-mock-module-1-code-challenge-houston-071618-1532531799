class Author

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select do |book|
      book.author == self
    end
  end

#   def write_book(title, word_count)
#     new_Book = Book.new(author, title)
#   end
end