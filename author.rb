class Author
@@all=[]
attr_accessor :name

  def initialize(name)
    @name =name
    @@all << self
  end

  def create_book(title, word_count)
    Book.new(self, title, word_count)
  end

  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  def total_words
    total_word_count =0
    books.each do |book|
      total_word_count += book.word_count
    end
    total_word_count
  end

  def self.most_words
    desired_author =nil
    @@all.each do |author|
      if desired_author== nil || desired_author.total_words < author.total_words
        desired_author = author
      end
    end
    desired_author
  end

  def self.all
    @@all
  end

end
