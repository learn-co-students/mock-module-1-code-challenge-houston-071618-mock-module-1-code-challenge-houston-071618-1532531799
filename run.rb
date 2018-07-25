require "pry"
require_relative "book"
require_relative "author"

# instances of Books

# book_1 = Book.new
# book_2 = Book.new
# book_3 = Book.new

Book.all

# book_1.author
# book_1.title
# book_1.word_count

# instances of authors

author_a = Author.new
author_b = Author.new
Author.all

# create the book

author_a_write_first = author_a.write_book("A's first book", 100)

author_a_write_second = author_a.write_book("A's second book", 50)

author_b_write_second = author_a.write_book("B's first book", 10)

# author_a.books

# puts "connected"

pry.start

true
