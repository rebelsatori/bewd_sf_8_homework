class Story

  attr_accessor :title, :url, :excerpt, :story

  def initialize(title, url, excerpt, story)
  	@title = title
  	@url = url
    @excerpt = excerpt
    @story = story
  end

  def headline
  	puts "-------------------------------------------------------------------------------------- \n \n"
  	puts @title
    puts 'Excerpt: ' + @excerpt
    puts 'Read more here: ' + @url
    puts "\n"
  end

  def search(keyword)
    check_string = @story.split(' ')
    if check_string.include?(keyword)
      headline
    end
  end

end
