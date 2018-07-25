class Book

  attr_accessor :title, :author

  @@all = []

  def initialize(title, author)
    @title = title
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def author(title)
    Author.all.select do |title| #Look at all authors, find author with title name that matches
    title.author == self
    p title.author
    end
  end

  def title
    self.title
  end

  def word_count(title)
    title.total_words
  end

end
