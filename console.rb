require 'pry'
require_relative './book'
require_relative './author'

alex=Author.new("alex")
alex.create_book("bball", 260)
alex.create_book("blah", 1)
# puts alex.total_words

blah = Author.new("blah")
blah.create_book("hello world", 402)


karen = Author.new("karen")
karen.create_book("Power of words", 500)

puts (Author.most_words)

 binding.pry

# false
