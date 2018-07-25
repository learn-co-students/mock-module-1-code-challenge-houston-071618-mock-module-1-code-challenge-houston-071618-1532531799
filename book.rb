require 'pry'
require_relative './book'
require_relative './author'

class Book

  attr_accessor :title, :author, :words
  @@all = []

  def initialize(title, author, words)
    @title = title
    @author = author
    @words = words
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    p self.author
  end

  def title
    p self.title
  end

  def word_count
    p self.words
  end

end
