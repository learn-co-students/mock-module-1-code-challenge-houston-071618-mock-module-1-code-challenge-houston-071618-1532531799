require 'pry'
class Author

@@all = []
attr_accessor :books

def initialize (books)
  @books = books
  self.all << self
end

def self.all
  @@all
end

def books
  self.all.select do |authors|
  authors == self
 end
hash = {}
hash[:self] = books
end

#def write_book (title, word_count)
#books

#end

#def total_words
#  self.books.
#end

#def self.most_words
#end

end
