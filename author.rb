class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def write_book(book_title, book_word_count)
    new_book = Book.new(title: book_title, word_count: book_word_count, author: self)
    self.books << new_book
  end

  def books
    Book.all.select do |book_obj|
      book_obj.author == self
    end
  end

  def total_words
    total_words = 0
    self.books.each do |book_obj|
      total_words += book_obj.word_count
    end
    total_words
  end

  def self.most_words
    most_words = 0
    most_words_author_obj = {}

    Book.all.each do |book_obj|
      if book_obj.word_count > most_words
        most_words = book_obj.word_count
        most_words_author_obj = book_obj.author
      end
    end

    most_words_author_obj
  end
end
