require 'pry'
require_relative 'book.rb'

class Author

  attr_accessor :name, :book

  def initialize(name)
    @name = name
    @@all = []
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    #Book.all.author == self
  end

  def write_books (title, word_count)
    title = Book.new

  end

  def total_words

  end

  def self.most_words

  end
end
