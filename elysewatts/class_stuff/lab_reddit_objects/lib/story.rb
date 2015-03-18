class Story
	attr_accessor :title, :upvotes, :url, :source


  def initialize(title, upvotes, url, source)
  	@title = title
  	@upvotes = upvotes
  	@url =	url
  	@source = source
  end

  def print_headline
  	puts "\n\n#{@title}"
  	puts "#{@url}, via #{@source}"
    puts "#{@upvotes} upvotes\n\n"
  end


end





