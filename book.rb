class Book
  attr_reader :author, :title
  @@all = []
  def initialize(author, title)
    @author = author
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

#   def author
#     @@all.select do |book|
#         book.author == self
#     end
#   end

#   def title
#     @@all.map do |book|
#       book.title
#     end
#   end
end
