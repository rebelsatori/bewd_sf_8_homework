class Dataset
  attr_accessor :title, :upvotes, :url, :argument

  def initialize
  # def initialize(title, upvotes, url, argument)
    @title = title
    @upvotes = upvotes
    @url = url
    @argument = argument
  end

  # TODO: Add a method called "headline" that returns a pretty string for
  # displaying on the command line with all of the data from the object.
end
