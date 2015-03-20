# this produces an attractive output on your command terminal

class Story
	attr_accessor  :title


	def initialize(title) 
		@title=title
	end	
  

  def headline
      puts " >> #{title}"
  end   



end
