require 'pry'
require_relative './book'
require_relative './author'

#binding.pry

author1 = Author.new("Kurt Vonnegut")
a1_book1 = author1.write_book("Slaughterhouse 5", 3000)
author2 = Author.new("George Orwell")
a2_book2 = author2.write_book("1984", 1000)
author3 = Author.new("George Orwell")
a3_book3 = author3.write_book("Animal Farm", 2000)


all_books = Book.all
all_authors = Author.all
#author_max_words = Author.most_words

book1 = a1_book1.word_count
book2= a2_book2.word_count
book3 = a3_book3.word_count


#value1 = author1.total_words
#value2 = author2.total_words
#value3 = author3.total_words

binding.pry
