require "json"
require "rest-client"

mashable_json = RestClient.get("http://www.mashable.com/stories.json")

result = JSON.load mashable_json

def article_summary(title, author, channel)
	{title: title, author: author, channel: channel}
end

articles = result['new']

articles.each do |x|
	new_articles = {}
	new_articles['title']
	new_articles['channel']

	new_articles.push new_articles
end

puts articles
puts new_articles
