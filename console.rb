require 'pry'
require_relative './book'
require_relative './author'

#binding.pry


dickens = Author.new("Charles")
dickens.write_book("HODOR", 500)

sample = Author.new("Max")
sample.write_book("Book", 10000)

puts Author.most_words.name