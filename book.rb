class Book

@@all = []

def initialize(book_title, author)
  attr_accessor :book_title, :author
  @book_title = title
  @author = author
  @@all << self


end

def self.all
 return   @@all
end

def book_author
  return @author
end

def book_title
  return @book_title
end

def book_word_count
  number_of_words = 0
book.each_line(){ |line| number_of_words = number_of_words + line.split.size }
number_of_words
end

end
