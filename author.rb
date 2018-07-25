class Author

  attr_accessor :book, :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select do |book|
      if book.author == self.name
        book
      end
    end

  end

  def write_book(title, word_count)
    Book.new(self.name, title, word_count)
  end

  def total_words
    count = 0
    self.books.each do |book|
      count += book.word_count
    end
    count
  end

  # def self.most_words
  #   total_each = Author.all.map do |author|
  #     self.total_words
  #   end
  #   total_each.find do |x|
  #     binding.pry
  #   end
  # end




end
