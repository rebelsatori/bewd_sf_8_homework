class Digg

	def initialize 
		@stories = []
	end

	def fetch_articles
		
		digg_json = JSON.load(RestClient.get("http://digg.com/api/news/popular.json"))
		new_articles = digg_json['data']['feed']#['data']  #['data']
		new_articles.each do |story|
			#story ={}
			
			title = story['content']['title']
			author = story['content']['author']
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



