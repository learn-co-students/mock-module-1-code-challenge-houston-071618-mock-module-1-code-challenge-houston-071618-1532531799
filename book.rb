
class Book
  attr_accessor :title, :word_count

  @@all = []

  def initialize(title, word_count)
    @title = title
    @word_count = word_count
    @@all << self
  end


  def author
    # author.name
  end

  def title
    @title
  end

  def work_count
    @word_count
  end

  def self.all
    @@all
  end
end

# - `Book#author`
# should return the author instance who wrote this book

# - `Book#word_count`
# should return the number of words in the book
