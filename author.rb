class Author

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select do |book|
      book.author == self.name
    end
  end

  def write_book(title, word_count)
    new_book = Book.new(title, self, word_count)
  end

  def total_words
    num_array = self.books.map do |book|
      book.word_count
    end
    total = num_array.inject(0){|sum,x| sum + x }
  end

  # def self.word_totals
  #   self.all.map do |author|
  #     author.total_words
  #   end
  # end

  def self.most_words
    Book.all.max_by do |book|
      book.word_count
    end
  end

end
