require "pry"

class Book
  attr_accessor :author, :title, :word_count
# @author
  @@all = []

  #   #getter/reader
  #   def title
  #     @title

  #   end
  #   #setter/writer

  #   def title=(title)
  #     @title = title

  #   end
  #   def publishingdate
  #     @publishingdate
  #   end

  #   def publishingdate=(publishingdate)
  #     @publishingdate = publishingdate
  #   end

  attr_accessor :publishingdate

  def initialize(author, title, word_count)
    @author = author
    @publishingdate = 1999
    #this is a variable
    @title = title

    #with self is a method
    #self.title = title

    @word_count = word_count
    @@all << self
  end

  def self.all
    @@all
  end
end

# class Book
#   attr_accessor :author, :title, :word_count

#   @@all = []

#   def initialize(title, author, word_count)
#     @author = author
#     @title = title
#     @word_count = word_count
#     @@all << self
#   end

#   def self.all
#     @@all
#   end

#   def title
#     @title
#   end

#   def author
#     @author
#   end

#   def title
#     @title
#   end

#   def word_count
#     @word_count
#   end
# end

# -----------------------------
# class Book
#     @@all = []
#     attr_accessor :author, :title, :word_count
#     def initialize(author, title, word_count)
#      @author = author
#      @title = title
#      @word_count = word_count
#      @@all << self
#     end
#     def self.all
#      @@all
#     end
#    end
