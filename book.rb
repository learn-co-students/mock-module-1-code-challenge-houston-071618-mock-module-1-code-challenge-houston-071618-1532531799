class Book

  attr_accessor :author, :title, :word_count
  # book has one author, book belongs to author
  @@all = []

  def initialize(author, title, word_count)
    @author = author
    @title = title
    @word_count = word_count
    @@all << self
  end

  def self.all
    @@all
  end

end


# new instance either
# 1. pass in arguments
# 2. assign outside of class
