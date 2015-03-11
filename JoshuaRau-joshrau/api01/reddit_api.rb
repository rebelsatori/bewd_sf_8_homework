require 'json'
require 'rest-client'


#Explian the program
puts 'This ruby program is designed to output the top 20 headlines from any subreddit of your choice'

puts 'select a subreddit'

sleep 1

subreddit = gets.chomp.to_s

address = 'http://www.reddit.com/r/'+subreddit+'/.json'


reddit_get = RestClient.get(address)
reddit = JSON.load reddit_get

sleep 1

puts "The top 20 headlines are..."

sleep 1

x=0
while x<20
puts reddit["data"]["children"][x]["data"]["title"]
x+=1
sleep 0.25
end

sleep 1

puts "hope you enjoyed your headlines!"
