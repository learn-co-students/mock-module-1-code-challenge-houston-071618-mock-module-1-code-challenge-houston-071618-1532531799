require "pry"
require_relative "./book"
require_relative "./author"

jkr = Author.new("JKR")
hp = Author.new("HarryPotter")
bk1 = Book.new(jkr, "This Title", 500)
bk2 = Book.new(hp, "AnotherTitle", 100)
bk3 = Book.new(jkr, "SecondTitle", 300)
binding.pry
