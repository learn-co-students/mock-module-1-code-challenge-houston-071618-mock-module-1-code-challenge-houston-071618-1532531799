class Author
  @@all = []

  def initialize
    @@all << self
  end

  def books
    Book.all.select { |book| book.author == self }
  end

  def write_book(title, word_count)
    Book.new(self, title, word_count)
  end

  def total_words
    books.map(&:word_count).reduce(:+)
  end

  def self.all
    @@all
  end

  def self.most_words
    all.max_by(&:total_words)
  end
end
