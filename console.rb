require 'pry'
require_relative './book'
require_relative './author'

#binding.pry

#==== run

#let's make some instances! in order to have books we need authors to write them so let's start with AUTHORS!!!
puts "-------"
jr = Author.new("JK Rowling")
me = Author.new("Scott with a U.")

puts "#{jr}"
puts "#{me}"

puts "-------"
harrypotter1 = Book.new("HP and the SS", jr, 20000)
harrypotter2 = Book.new("HP and some bullshit", jr, 22983)
harrypotter3 = Book.new("HP and teen angst", jr, 24000)
harrypotter4 = Book.new("HP and WINGARDIUM LEVIOSAAAAAAH", jr, 23632)
trollvar = Book.new("pooping for idiots", me, 10)
puts "#{harrypotter1}"
puts "#{harrypotter2}"
puts "#{harrypotter3}"
puts "#{harrypotter4}"

puts "-------"

puts "#{jr.books}"
puts "#{me.books}"

puts "-------"

puts "#{jr.total_words}"
puts "#{me.total_words}"

puts "-------"

puts "#{Author.most_words}" #Author.most_words # expect this to break a lot!


puts "-------"
"END!!!! YAY!!!"
