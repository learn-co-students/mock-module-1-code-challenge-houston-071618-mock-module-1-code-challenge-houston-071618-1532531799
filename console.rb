require 'pry'
require_relative './book'
require_relative './author'

john = Author.new("John Steinbeck")
grapes = Book.new("Grapes of Wrath", "674")

john.books

# john.write_book("harry potter", "453")
grapes.author
Author.all


grapes.title
john.books

binding.pry
