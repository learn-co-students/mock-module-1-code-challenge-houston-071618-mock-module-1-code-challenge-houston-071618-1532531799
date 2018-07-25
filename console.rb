require 'pry'
require_relative './book'
require_relative './author'

isaac_asimov = Author.new("asimov")
robert_caro = Author.new("caro")
dan_ariely = Author.new("ariely")

isaac_asimov.write_book("iRobot", 250)
isaac_asimov.write_book("The Foundation", 450)
robert_caro.write_book("The Power Broker", 1200)
robert_caro.write_book("The Path To Power", 700)
dan_ariely.write_book("Predictibly Irrational", 250)

binding.pry
robert_caro.books

isaac_asimov.total_words

Author.most_words
