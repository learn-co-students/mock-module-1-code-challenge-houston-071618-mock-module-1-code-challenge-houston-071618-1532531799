require 'pry'
require_relative './book'
require_relative './author'

p jeannie = Author.new("Jeannie")
p ara = Author.new("Ara")
p Author.all

p "*" * 20

cityscapes = jeannie.write_book("Cityscapes", 3000)
merong = jeannie.write_book("Merong", 2000)
chunchu = ara.write_book("Chunchu", 5000)
p Book.all

p "*" * 20


p jeannie.books
p ara.books

p jeannie.total_words
p ara.total_words

binding.pry
