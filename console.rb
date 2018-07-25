require 'pry'
require_relative './book'
require_relative './author'

eragon = Book.new("Eragon")
chris = Author.new("Christopher P")

eragon.author
chris.books

binding.pry
