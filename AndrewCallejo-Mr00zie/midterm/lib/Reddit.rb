class Reddit

	def initialize 
		@stories = []
	end

	def fetch_articles
		
		reddit_json = JSON.load(RestClient.get("http://www.reddit.com/.json"))
		new_articles = reddit_json['data']['children']#['data']  #['data']
		new_articles.each do |story|
			#story ={}
			
			title = story['data']['title']
			author = story['data']['author']
			#story['author'] = article['data']['children']
			#story = Story.new#(story['title'],story['author'])# #sub 
		# new_article = new_articles
		# new_articles.each do |article|
		 	#story = Story.new(article['title'],article['author'])
			#story = Story.new(article['title'],article['author'])
			@stories.push(Story.new(title, author))

		end

		return @stories
	end
end


