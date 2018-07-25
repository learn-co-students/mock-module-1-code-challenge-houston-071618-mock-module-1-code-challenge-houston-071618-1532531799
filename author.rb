require "pry"

class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Books.all.select do |book|
      author.book == self
    end
  end

  def write_book(title, word_count)
    Book.new(self, title, word_count)
  end

  def total_words
    books.map do |book|
      book.word_count.reduce(:+)
    end
  end

  def self.most_words
    Author.all.max_by do |author|
      author.total_words
    end
  end
end

# class Author
#   attr_accessor :name
#   @@all = []

#   def initialize(name)
#     @name = name
#     @@all << self
#   end

#   def self.all
#     @@all
#   end

#   def books
#     Book.all.select do |book|
#       book.author == self
#     end
#   end

#   def write_book(title, word_count)
#     Book.new(title, self, word_count)
#   end

#   #words across all books written by a specific author
#   def total_words
#     sum = 0
#     books.each do |book|
#       sum += book.word_count
#     end
#     sum
#   end

#   #this is a class method as a . is used
#   #therefore we call self as we refer to the current class of Author
#   def self.most_words
#     self.all.max_by do |author|
#       author.total_words
#     end
#   end
# end

# ------------------------------
# class Author
#     @@all = []
#     attr_reader :name
#     def initialize(name)
#       @name = name
#       @@all << self
#     end
#     def self.all
#       @@all
#     end
#     def books
#       Book.all.select { |book| book.author == self }
#     end
#     def write_book(title, word_count)
#       Book.new(self, title, word_count)
#     end
#     def total_words
#       books.map { |book| book.word_count }.reduce(:+)
#     end
#     def self.most_words
#       self.all.sort_by { |author| author.total_words }.reverse.first
#     end
#   end
