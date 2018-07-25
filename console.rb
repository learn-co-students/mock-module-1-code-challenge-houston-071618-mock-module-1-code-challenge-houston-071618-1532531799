require 'pry'
require_relative './book'
require_relative './author'

edgar = Author.new("Edgar Allen Poe")
maya = Author.new("Maya Angelou")

and_still = Book.new("Maya Angelou", "And Still I Rise", 50)
the_raven = Book.new("Edgar Allen Poe", "The Raven", 1140)

i_know_why = maya.write_book("i know why the caged bird sings", 88740)
black_cat = edgar.write_book("The Black Cat", 3998)

maya.books
edgar.books
maya.total_words
edgar.total_words

binding.pry

Book.all
Author.all
#Author.most_words
