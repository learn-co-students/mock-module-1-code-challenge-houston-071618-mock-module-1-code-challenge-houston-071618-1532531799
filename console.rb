require 'pry'
require_relative './book'
require_relative './author'



pablo = Author.new("pablo")
leo = Author.new("leo")
book1 = Book.new("pabloBook", pablo, 50)
book2 = Book.new("leosBook", leo, 50)
book3 = Book.new("pablobook2", pablo, 50)
book4 = Book.new("leosBook2", leo, 20)

binding.pry

false
