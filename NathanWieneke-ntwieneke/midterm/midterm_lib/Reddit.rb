class Reddit
  attr_accessor :stories, :fetch_stories
  def initialize
    @stories =  []
  end
  def fetch_stories
    require 'json'
    require 'rest_client'
    json = JSON.load(RestClient.get('http://reddit.com/.json'))
    json['data']['children'].each do |child|
      # story = {}
      # story['title'] = child['data']['title']
      # puts story
      # story['url'] = child['data']['url']
      # story['score'] = child['data']['score']
    new_story = Story.new(child['data']['title'], child['data']['url'], child['data']['score'], 'reddit.com')
    @stories << new_story
  end
end
end
