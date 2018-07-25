require "pry"
require_relative "./book"
require_relative "./author"

scott = Author.new("Scott Tang")
james = Author.new("James Kim")

fail_forward = Book.new("Failing Forward", scott, 10)
reef_keeping = Book.new("Reef Keeping", james, 90000)

p fail_forward.word_count
p reef_keeping.word_count
p fail_forward.author.name

# p scott.books
# p Author.all

p "write books"
p scott.write_book("Ruby Programming", 1200)
p scott.total_words
p james.total_words

p "most words"

p Author.most_words
