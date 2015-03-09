#require "open-uri"
require 'json'
require 'rest-client'
load 'myclass.rb'

#'require' is calling on outside 'classes(ie: open-uri, json, rest-client(package name), 
	#RestCLient(class name).  These classes are not RUBY built in classes. 
# inlcude the seperate file to your own files, load, require, require_relative 


# step 1, get the data from api, and store the data 
# api request data, convert to hash, store 
mashable_json = RestClient.get("http://www.mashable.com/stories.json")


result = JSON.load mashable_json 
# convert json result from string to hash 

new_articles = result['new']
hot_articles = result['hot']
rising_articles = result['rising']


new_articles.each do |x|
	puts x['shares']['facebook']
end	

hot_articles.each do |x|
	puts x['shares']['twitter']
end	

rising_articles.each do |x|
	puts x['author']
end	



=begin def print_titles articles
 	articles.each do |x|
 		puts x['title']
 	end	
 end
=end

# # step 2, search from the api dat in new section with some keywords
# print_titles new_articles
# print_titles hot_articles
#wawa = MyClass.new
#wawa.wawa


puts mashable_json.class
puts result.class
puts new_articles.class 
puts new_articles.count.to_s + ' new articles today!'
	
# step 3, print the search result to the user


