require 'json'
require 'rest-client'
#for personalizing the user's interests.
class Personalization
	attr_accessor :interests
	def initialize
		@interests= []
	end
    # gathering information	
	def fetch_interests
    	
    	
    	puts "Let's personalize a few subreddits!"
    	puts "Please rate your interests in the following subreddits from 1-10."
	 	puts "Sports?"
		sports_answer = gets.strip.downcase.to_i
		puts "Cooking?"
		cooking_answer = gets.strip.downcase.to_i
		puts "Travel?"
		travel_answer = gets.strip.downcase.to_i
		puts "Finance?"
		finance_answer = gets.strip.downcase.to_i
		puts "Gaming?"
		gaming_answer = gets.strip.downcase.to_i
		puts "Animals?" 
		animals_answer = gets.strip.downcase.to_i
		#rating system directs what is outputted via array based on user input
		#calls on api's based on interest rate.
			if sports_answer > 6
      		 	reddit_sports_json = JSON.load(RestClient.get("http://www.reddit.com/r/sports/.json"))
      	    	reddit_sports_json['data']['children'].each do |story|
      	  		sports_object = Story.new(story["data"]["score"].to_s, story["data"]["title"], story["data"]["url"], story["data"]["domain"])
      	     	@interests << sports_object
      		end
      	end
        
        	if cooking_answer > 6
        		reddit_cooking_json = JSON.load(RestClient.get("http://www.reddit.com/r/cooking/.json"))
      			reddit_cooking_json['data']['children'].each do |story|
      			cooking_object = Story.new(story["data"]["score"].to_s, story["data"]["title"], story["data"]["url"], story["data"]["domain"])
      			@interests << cooking_object      		
      		end
      	end
       
        	if travel_answer > 6
        		reddit_travel_json = JSON.load(RestClient.get("http://www.reddit.com/r/travel/.json"))
      			reddit_travel_json['data']['children'].each do |story|
      			travel_object = Story.new(story["data"]["score"].to_s, story["data"]["title"], story["data"]["url"], story["data"]["domain"])
      			@interests << travel_object      		
     		end
      	end
      	
        	if finance_answer > 6
        		reddit_finance_json = JSON.load(RestClient.get("http://www.reddit.com/r/finance/.json"))
      			reddit_finance_json['data']['children'].each do |story|
      			finance_object = Story.new(story["data"]["score"].to_s, story["data"]["title"], story["data"]["url"], story["data"]["domain"])
      			@interests << finance_object      		
      		end
      	end
      	
       		if gaming_answer > 6
        		reddit_gaming_json = JSON.load(RestClient.get("http://www.reddit.com/r/gaming/.json"))
      			reddit_gaming_json['data']['children'].each do |story|
      			gaming_object = Story.new(story["data"]["score"].to_s, story["data"]["title"], story["data"]["url"], story["data"]["domain"])
      			@interests << gaming_object   		
      		end
      	end
      	
      		if animals_answer > 6
        		reddit_animals_json = JSON.load(RestClient.get("http://www.reddit.com/r/animals/.json"))
      			reddit_animals_json['data']['children'].each do |story|
      			animals_object = Story.new(story["data"]["score"].to_s, story["data"]["title"], story["data"]["url"], story["data"]["domain"])
      			@interests << animals_object	
      		end
		end
    @interests
    end
end



