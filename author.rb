require 'pry'

class Author
  attr_accessor :name #, :title, :word_count
  @@all = []

  def initialize(name)
    @name = name
    # @title = title
    # @word_count = word_count
    @@all << self
    binding.pry
  end

  def self.all
    @@all
  end

  def books
    @@all.select do |book|
      book.name = self
    end
  end
  #
  # def write_book(title, word_count)
  #   Book.new(self, title, word_count)
  # end

  def total_words
    Book.all.map do |word|
      word.word_count
    end
  end

  def self.most_words
    
  end


end




# - `Author.all`
# should return all of the authors
# - `Author#books`
# should return all of the books an author has written
# - `Author#write_book`
# should take arguments of a title and word count and make a new Book instance associated with this author
# - `Author#total_words`
# should return the total number of words that author has written across all of their authored books.
# - `Author.most_words`
# should return the author instance who has written the most words
