# ### `Author`
# Build the following methods on the Author class X

# - `Author.all`
# should return all of the authors 
# - `Author#books`
# should return all of the books an author has written 
# - `Author#write_book`
# should take arguments of a title and word count and make a new Book instance associated with this author
# - `Author#total_words`
# should return the total number of words that author has written across all of their authored books.
# - `Author.most_words`
# should return the author instance who has written the most words



class Author

	@@all_authors = []

	attr_accessor :name, :all_authors, :title, :word_count, :books, :author_books

	@author_books = []

	def initialize(name)
		@name = name
		@@all_authors << self
	end

	def self.all
		@@all_authors
	end

	def self.books(name)
		self.author_books
	end

	def self.write_book(title, word_count)
		@title = title
		@word_count = word_count
		@name = name
		@author_books << self
		Book.new(title, name, word_count)
	end

	def self.total_words(author_books)
		total_words = 0
		author_books.each do |word_count|
			total_words += word_count
		end
		total_words
	end

	def most_words
		[total_words].max
	end



end