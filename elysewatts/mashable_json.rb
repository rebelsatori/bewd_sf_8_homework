require 'json'
require 'rest-client'



json = RestClient.get('http://mashable.com/stories.json')
result = JSON.load json


# print the titles of all the "new" stories
result['new'].each do |story|
	puts story['title']
end

#print the new stories with 'kooky' in the title


#result['new'].findall
#story['title'].include?('kooky')