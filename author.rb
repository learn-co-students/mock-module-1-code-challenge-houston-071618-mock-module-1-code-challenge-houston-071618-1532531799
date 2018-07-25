require_relative './book.rb'
require 'pry'

class Author
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def write_book(title, word_count)
    Book.new(title, self, word_count)
  end
  def books
    Book.all.select {|book| book.author == self}
  end
  def total_words
    wordCount = 0
    books.each{|book| wordCount += book.word_count}
    wordCount
  end
  def self.most_words
    #let's math! how to find total words for all books?
    # Words * books! and we have total_words for the
    # sum of words an author has. we need an array of
    # word counts to find the MAX value

    #returns an array of all the total words
    # VVVV
    #sort the shit of that Array!
    # VVVV
    #largest is .last so now we have a number to compare!
    # VVVV
    # which author has this number? let's FIND out!!

    biggest_total_word_count = @@all.map{|author|author.total_words}.sort.last
    #look through all authors and match that GIANT WORD
    @@all.find{|author| author.total_words == biggest_total_word_count}
  end







end
