class Author
	attr_accessor :name

	@@all = []

	def self.all
		@@all
	end

	def initialize(name)
		@name = name
		@@all << self
	end



	def write_book(title, word_count)
		Book.new(title, self, word_count)
	end

	def books
		Book.all.select do |book|
			book.author == self
		end
	end


	def total_words#words across all books
		sum = 0
		books.each do |book|
			sum += book.word_count
		end
		sum
	end

	def self.most_words
		all.max_by {|author| author.total_words}
	end

end

