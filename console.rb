require 'pry'
require_relative './book'
require_relative './author'

jkr = Author.new("JKR")
jrrt = Author.new("JRRT")
hp = Book.new(jkr, "HP 1", 10000)
hp2 = Book.new(jkr, "HP 2", 20000)
lotr = Book.new(jrrt, "LOTR", 20000)

binding.pry
