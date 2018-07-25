require 'pry'
require_relative './book'
require_relative './author'

class Author

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def write_book(title, words)
    new_book = Book.new(title, self.name, words)
  end

  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  def total_words
    words_written = 0
    books.each do |book|
      words_written += book.words
    end
  end

  # def self.most_words
  #   self.total_words
  #
  # end

end
