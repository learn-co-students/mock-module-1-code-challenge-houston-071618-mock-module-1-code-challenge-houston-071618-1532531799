class Book

  @@all=[]

  def initialize(author, title, word_count)
    @author = author
    @title = title
    @word_count = word_count
    @@all.push(self)
  end

  def author #needs to return author instance
    return @author
  end

  def title
    return @title
  end

  def word_count
    return @word_count
  end

  def self.all
    return @@all
  end
end
