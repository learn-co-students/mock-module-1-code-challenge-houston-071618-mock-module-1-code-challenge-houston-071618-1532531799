class Book

  attr_accessor :author, :title, :word_count

  @@all = []

  def initialize(author, title, word_count)
    @author = author
    @title = title
    @word_count = word_count
    @@all << self
  end

  def self.all
    #Should return all the books
    @@all
  end

  def author
    #Should return the author instance who wrote the book
    Author.all.select {|item| item.author == self}
  end

  def word_count
    #Should return the number of words in the book
    self.author.map {|item| item.word_count}
  end

end #class Book
