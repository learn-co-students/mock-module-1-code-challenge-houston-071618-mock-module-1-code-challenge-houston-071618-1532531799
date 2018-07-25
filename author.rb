class Author

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    Author.all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  def write_book(title, word_count)
    Book.new(title, self, word_count)
  end

  def total_words
    total = 0
    self.books.each do |book|
      total += book.word_count
    end
    total
  end

  def self.most_words
    words = 0
    author_name = ''
    self.all.each do |author|
      author_words = author.total_words
      if words < author_words
        words = author_words
        author_name = author.name
      end
    end
    author_name
  end

end
