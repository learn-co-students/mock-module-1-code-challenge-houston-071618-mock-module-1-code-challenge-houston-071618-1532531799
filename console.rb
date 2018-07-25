require 'pry'
require_relative './book'
require_relative './author'


cindy_book = Book.new('Cindy', 'Title of the Book')
daniel_book = Book.new('Daniel', 'This is Daniels Book')

cindy = Author.new('Cindy')
daniel = Author.new('Daniel')
binding.pry


