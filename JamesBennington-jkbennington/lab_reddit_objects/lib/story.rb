class Story
	attr_accessor :upvotes, :title, :url, :domain 
	# TODO: This object should require four arguments:
    def initialize(upvotes, title, url, domain)
      @upvotes = upvotes
      @title = title
      @url = url
      @domain = domain
   	end

      def headline 
 	     puts "Upvotes: #{@upvotes}, Title: #{@title}, URL: #{@url}, Domain: #{@domain}. "
 	    end
 	
 	

  #  - number of (up)votes on a story
  #  - the URL of the story
  #  - the site that it came from

  # TODO: Add a method called "headline" that returns a pretty string for
  # displaying on the command line with all of the data from the object.
end
