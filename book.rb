class Book
  attr_accessor :title, :author, :word_count
  @@all = []
  def initialize(title, author)
    @title = title
    @author = author
    @word_count = 0
    @@all <<self
  end

  def self.all
    @@all
  end





end
