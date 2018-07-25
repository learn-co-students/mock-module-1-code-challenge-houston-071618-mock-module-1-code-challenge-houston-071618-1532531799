class Author
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    return @@all
  end

  def books
    return @books
  end

  def write_book(title, word_count)
    return Book.new(self, title, word_count)
  end

  def total_words
    #iterate through Book.all
    #if it's the author, add book to a new array
    # iterate through that array
    # add the words together
    # return that word count
    total_word_count = 0
    authors_books = Book.all.select do |book|
      book.author == self
    end

    authors_books.each do |author_book|
      total_word_count += author_book.word_count
    end
    return total_word_count
  end

  #i made .most_words so much more complicated
  #than it needed to be :/

  # def self.most_words
  #   #i made this so much more complicated than it needed
  #   #to be
  #   i = 0
  #   max_word_count = 0
  #   while i < self.all.length
  #     if @@all[i].total_word_count < @@all[i+1].total_word_count
  #
  #
  #
  #   #iterate through Books array
  #   #isolate each author into its own array
  #   #add up that author's word_count
  #   #set it equal to author_word_count
  #   #if author word_count > max_word
  #   #max_word = author_word_count
  #   #max_author = self
  # #   max_word = 0
  # #   max_author = ""
  # #   author_word_count = 0
  # #   hash_of_authors = {}
  # #   Book.all.each do |book|
  # #     if hash_of_authors.has_key? book.author
  # #       hash_of_authors[book.author].push(book)
  # #     else
  # #       hash_of_authors[book.author] = []
  # #       hash_of_authors[book.author].push(book)
  # #     end
  # #   end
  # #   hash_of_authors.each do |author, books|
  # #     books.each do |book|
  # #       author_word_count += book.word_count
  # #       if max_word < author_word_count
  # #         max_word = author_word_count
  # #       else
  # #         author_word_count = 0
  # #       end
  # #     end
  # #   end
  # # end

end
