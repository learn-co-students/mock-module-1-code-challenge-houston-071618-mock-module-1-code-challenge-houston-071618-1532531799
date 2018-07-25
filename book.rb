require "pry"

class Book
  attr_accessor :author, :title

  @@all = []

  #a book would need arguments of author, title
  def initialize(author, title)
    @author = author
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    Book.all.find do |book|
      book.author == self
      binding.pry
    end
  end

  def title(title)
    Book.all.find do |book|
      book.title == self
    end
  end

  def word_count
  end
end
