
class Author
  @@all = []
  @@all_word_count = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  def self.all
    @@all
  end

  def write_book(title, word_count)
    Book.new(title, self, word_count)
  end

  def total_words
    count = 0
    books.map do |book|
      count += book.word_count
    end
    @@all_word_count << count
    count
  end

  def self.most_words
    all_word_count.max
  end

  private

  def self.all_word_count
    @@all_word_count
  end
end
