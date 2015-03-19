
class Thread
  attr_accessor :title, :upvotes, :url, :argument

  # Instantiate all the required variables
  def initialize
    @title = title
    @upvotes = upvotes
    @url = url
    @argument = argument
  end

  # Create a method that prints out the headline for each thread
  def headline
  	puts "Title: #{@title} " + "Upvotes: #{@upvotes} " + "URL: #{@url} " + "Website: #{@argument}"
  end
end
