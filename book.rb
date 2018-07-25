require 'pry'
class Book

  @@all = []

attr_reader :author, :title, :word_count

def initialize (author, title, word_count)
  @author = author
  @title = title
  @word_count = word_count
  self.all << self
end

def self.all
@@all
end

  def author
    @author
end

def title
  @title
end

def word_count
  #should return the number of words in the book
@word_count
end

end
