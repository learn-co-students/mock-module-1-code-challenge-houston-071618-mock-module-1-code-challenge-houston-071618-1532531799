require 'pry'
require_relative './book'
require_relative './author'

jack = Author.new("Jack")
suess = Author.new("Dr. Suess")
on_the_road = Book.new("On The Road", "Jack", 200)
green_eggs = Book.new("Green Eggs and Ham", "Dr. Suess", 25)
another_one = Book.new("Another One", "Jack", 200)
jack.total_words

binding.pry
