
class Book
  attr_accessor :title, :word_count, :author

  @@all = []

  def initialize(title, word_count, author)
    @title = title
    @word_count = word_count
    @author = author
    @@all << self
  end

  # Book.all should return all of the books
  def self.all
    @@all
  end

  # Book#author should return the author instance who wrote this book
  def author
    Author.all.select do |author|
      # binding.pry
      author == @author
    end
  end

  # Book#title should return the title of the book
  def title
    @title
  end

  # Book#word_count should return the number of words in the book
  def word_count
    @word_count
  end
end
