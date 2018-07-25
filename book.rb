class Book

	attr_accessor :title, :author, :word_count

	@@all = []

	def initialize(title, author, word_count)
		@title = title
		@author = author
		@word_count = word_count
		@@all << self
	end

	def self.all
		@@all
	end

	def author
		@author
	end

	def title
		@title
	end

	def word_count
		@word_count
	end
end

