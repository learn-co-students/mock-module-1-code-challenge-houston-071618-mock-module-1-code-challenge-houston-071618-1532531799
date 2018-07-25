require 'pry'
require_relative './book'
require_relative './author'


hp = Book.new("Harry Potter", "JK", 580)
hg = Book.new("Hunger Games", "SC", 320)

JK = Author.new("JK Rowling")
SC = Author.new("Suzette Collins")

hp2 = Author.write_book("Next HP", 40000)

binding.pry