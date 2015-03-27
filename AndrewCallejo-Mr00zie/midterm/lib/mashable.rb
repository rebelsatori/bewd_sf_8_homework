class Mashable

	def initialize
		@stories = []
	end

	def fetch_articles

		mashable_json = JSON.load(RestClient.get("http://www.mashable.com/stories.json"))
		new_articles = mashable_json['new']
		new_articles.each do |article|
			story = Story.new(article['title'],article['author'])
			@stories.push(story)
		end

		return @stories 
	end

	#def search(keyword)
		# keyword = gets.chomp
		# if keyword = keyword.match 
		# 
	end
