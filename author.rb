class Author

  attr_accessor :book, :author, :title, :word_count, :total_words
  # author has many books
  @@all = []

  def initialize
    @@all << self
    @books = []
    @total_words = 0
  end

  def self.all
    @@all
  end

  def write_book(title, word_count)
    # creates instance of book
    book = Book.new(self, title, word_count)
    # assigns value of author to the book instance
    # book.author = self
    # adds to this authors books
    # @books << book
  end

  def books
    # returns an array of all the books written by author
    Book.all.select do | book |
      book.author == self
    end

  end


  def total_words
    books.map do | book |
      @total_words += book.word_count
    end
  end

end
