require 'pry'
require_relative 'author.rb'

class Book

  attr_accessor :name, :author

  def initialize(name)
    @name = name
    @@all = []
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    # self.author =
  end

  def title
    self.name
  end

  def word_count

  end

end
