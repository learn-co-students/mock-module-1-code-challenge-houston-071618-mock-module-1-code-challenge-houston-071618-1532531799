require 'pry'
require_relative './book'
require_relative './author'

#the_rats = Book.new("James Herbert", "The Rats", 1500)
herbert = Author.new("James Herbert")
the_rats = herbert.write_book("The Rats", 2500)

rowling = Author.new("JK Rowling")
hp1 = rowling.write_book("Harry Potter 1", 3000)
hp2 = rowling.write_book("Harry Potter 2", 5000)

shakespeare = Author.new("William Shakespeare")
hamlet = shakespeare.write_book("Hamlet", 12000)



binding.pry
