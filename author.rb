class Author

  @@all = []
  attr_accessor :name, :book_title

def initialize(name, book_title)
@name = name
@book_title = book_title
@@all << self
end

def self.all
  return @@all
end

def author_books
 return @book_title
end

def author_write_book(title, word_count)

  title + word_count = self
end

def author_total_words
  number_of_words = 0
book.each_line(){ |line| number_of_words = number_of_words + line.split.size }
number_of_words
end

def author_most_words
end
