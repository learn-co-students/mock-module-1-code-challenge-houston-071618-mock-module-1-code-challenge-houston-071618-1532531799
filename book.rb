class Book

  attr_reader :author, :title, :word_count

  @@all = []

  def initialize(params_obj)
    @title = params_obj[:title]
    @word_count = params_obj[:word_count]
    @author = params_obj[:author]
    @@all << self
  end

  def self.all
    @@all
  end
end
