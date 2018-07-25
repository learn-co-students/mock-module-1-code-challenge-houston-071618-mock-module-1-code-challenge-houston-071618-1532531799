# ### `Book`
# Build the following methods on the Book class X

# - `Book.all`
# should return all of the books
# - `Book#author`
# should return the author instance who wrote this book
# - `Book#title`
# should return the title of the book
# - `Book#word_count`
# should return the number of words in the book

require "pry"


class Book

	@@all_books = []

	attr_accessor :title, :author, :word_count, :all_books

	def initialize(title, author, word_count)
		@title = title
		@author = author
		@word_count = word_count
		@@all_books << self
	end

	def self.all
		@@all_books
	end

	def self.author
		@author
	end

	def self.title
		@title
	end

	def self.word_count
		@word_count
	end


end