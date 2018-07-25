class Author

  attr_accessor :author

  @@all = []

  def initialize(author)
    @author = author
    @@all << self
  end

  def self.all
    #Should return all the authors
    @@all
  end #all

  def books
    #should return all the books an author has written
    Books.all.select {|item| item.author == self}

  end #books

  def write_book(title, word_count)
    #Should take arguments of a title and word count and
    # make a new Book instance associated with this author
    new_book = Book.new(self, title, word_count)
  end #write_book

  def total_words
    #should return the total number of words that author has
    #written across all of their authored books.
    total_word_count = 0
    self.books.each do |item|
      total_word_count = item.word_count + total_word_count
    end
    total_word_count
  end #total_words

  def self.most_words
    #By wording I'm assuming that this is from ALL authors in array
    #should return the author instance who has written the most words
    #my_array.max {|a,b| a.word_count <=> b.word_count}
    all.each do |item1, item2|
      item1.word_count <=> item2.word_count
    end

  end #most_words



end #class Author
