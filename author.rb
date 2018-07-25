require "pry"

class Author
  attr_accessor :author, :title
  @@all = []

  def initialize()
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Author.all.select do |book|
      book.author == self
    end
  end

  def write_book(title, word_count)
    Book.new(author)
  end

  def total_words
    Book.all.reduce(0) do |x, y|
      x.author + y.author
    end
  end

  #this is a class method as a . is used
  #therefore we call self as we refer to the current class of Author
  def self.most_words
  end
end
