class Book
@@all=[]
attr_accessor :title, :author, :word_count

  def initialize (author, title, word_count)
    @author = author
    @title = title
    @word_count = word_count
    @@all << self
  end

  def author
    Author.all.select do |author|
      author.book == self
    end
  end

  def self.all
    @@all
  end

end
