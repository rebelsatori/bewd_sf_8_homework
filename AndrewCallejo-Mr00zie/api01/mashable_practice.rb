require 'json' #calling outside classes. These are not RUBY built in classes
require 'rest-client' #this is the Class Name
#load 'myclass.rb' Outside class saved file

mashable_json = RestClient.get("http://www.mashable.com/stories.json")

result = JSON.load mashable_json

new_articles = result['new']
rising_articles = result['rising']
hot_articles = result['hot']

new_articles.each do |x|
	output = {}
	output x['title'] = x['data']['author']
end

rising_articles.each do |x|
	puts x['title']['author']
end

hot_articles.each do |x|
	puts x['title']['author']
end

puts new_articles.count.to_s + 'new articles today!!'


