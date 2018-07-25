require 'pry'

class Book
  attr_accessor :name, :word_count
  @@all = []

  def initialize(name)
    @name = name
    @word_count = word_count
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    @@all.select do |author|
      author.name = self
    end
  end

  def title
    author.map do |title|
      title.name
    end
  end

  def word_count
    author.map do |title|
      title.word_count
    end
  end

end


#
# - `Book.all`
# should return all of the books
# - `Book#author`
# should return the author instance who wrote this book
# - `Book#title`
# should return the title of the book
# - `Book#word_count`
# should return the number of words in the book
