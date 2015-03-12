# Nicole Conway
# https://api.github.com/users/rails/repos

watchers = Array.new
url = Array.new

#pull from github rails repos API
require 'json'
require 'rest-client'
git_info = JSON.load(RestClient.get('https://api.github.com/users/rails/repos'))

#pulls html_url and watchers_count from API and puts them in arrays
git_info.each do |pages|
	watchers.push(pages['watchers_count'])
	url.push(pages['html_url'])
end 

#creates a hash from the two arrays
watchersurl = Hash[url.zip watchers]

#returns html_url with the highest watchers_count 
watchersurl.each { |url, watchers| puts url if watchers == watchersurl.values.max }