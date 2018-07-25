class Author
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

# Author.all should return all of the authors
  def self.all
    @@all
  end

# Author#books should return all of the books an author has written
  def books
    # binding.pry
    Book.all.select do |book|
      # binding.pry
      #book.author is returning as an array
      #self is not an array!! WHYYYY
      book.author == self
    end
  end

# Author#write_book should take arguments of a title and word count and make a new Book instance associated with this author
  def write_book(title, word_count)
    Book.new(title, word_count, self)
  end

# Author#total_words should return the total number of words that author has written across all of their authored books.
  def total_words
    num_words = 0
    # binding.pry
    books.map do |book|
      num_words += book.word_count
    end
    num_words
  end
# Author.most_words should return the author instance who has written the most words
  def self.most_words
    num_words = 0
    author = nil
    books.map do

    end
   end
end
