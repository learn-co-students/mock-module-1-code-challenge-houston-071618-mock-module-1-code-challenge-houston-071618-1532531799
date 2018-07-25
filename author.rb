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

  def books(title)
    Book.all.select do |title| #look at all the books, select the titles with author = self.
      title.author == self
    end
  end

  def write_book(title, word_count)
    book.new(self, title, word_count)
  end

  def total_words(title) #count all words when given a title name
    count = 0
    title.each do |words|
    count = words.count
    end
  end

end
