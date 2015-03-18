require 'json'
require 'rest-client'
reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
my_json_hash = {:one => 'one', :two => 'two', :three => 'three'}.to_json
puts 'no output, right? right.'