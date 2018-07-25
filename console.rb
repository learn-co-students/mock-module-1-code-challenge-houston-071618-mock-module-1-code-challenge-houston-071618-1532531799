require 'pry'
require_relative 'book'
require_relative 'author'


binding.pry
book1 = Book.new("Book1", "A Name")
book2 = Book.new("Book2", "B Name")
book3 = Book.new("Book3", "C Name")
book4 = Book.new("Book4", "A Name")

authorA = Author.new("C Name", "Book5")
Pry.start
