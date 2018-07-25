class Author

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def books
		Book.all.map do |x|
			x.author == self
		end
	end

	def write_book(title, word_count)
		Book.new(self, title, word_count)
	end

	# def total_words
	# 	write_book.select do ||
	#   
	# end

	def self.all
		@@all
	end

end



# - `Author#total_words`
# should return the total number of words that author has written across all of their authored books.
# - `Author.most_words`
# should return the author instance who has written the most words
