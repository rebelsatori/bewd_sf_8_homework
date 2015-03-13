class Story
	attr_accessor :title, :upvotes, :url, :source


  def initialize(title, upvotes, url, source)
  	@title = title
  	@upvotes = upvotes
  	@url =	url
  	@source = source
  end

  def print_headline
  	puts "#{@title}"
  	puts "#{@url} (#{@source})"
  	puts "#{@upvotes} upvotes"
  end


end





