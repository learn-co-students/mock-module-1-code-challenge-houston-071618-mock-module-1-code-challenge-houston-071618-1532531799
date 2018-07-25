require 'pry'
require_relative './book'
require_relative './author'


jk = Author.new("JK Rowling")
hp = Book.new("Harry Potter 1", 300, jk)

abc = Author.new("abc")
xyz = Book.new("xyz", 200, abc)

jk.write_book("HP2", 500)
# jk.books

hp.author

hp.title  # Book#title should return the title of the book
hp.word_count   # Book#word_count should return the number of words in the book

binding.pry

jk.total_words

# Author.most_words # Author.most_words should return the author instance who has written the most words
