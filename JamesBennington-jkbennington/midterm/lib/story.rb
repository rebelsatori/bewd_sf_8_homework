class Story
	attr_accessor :upvotes, :title, :url, :domain 
	
    def initialize(upvotes, title, url, domain)
      @upvotes = upvotes
      @title = title
      @url = url
      @domain = domain
   	end
    def headline 
 	     puts "Upvotes: #{@upvotes}, Title: #{@title}, URL: #{@url}, Domain: #{@domain}. "
 	  end
end