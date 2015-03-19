
class Reddit
  attr_accessor :threads, :topic
  def initialize(topic)
    @threads = []
    @topic = topic
  end

  # Define the fetch_threads method
  def fetch_threads
    require 'json'
    require 'rest-client'

    # Plug in the topic and pull down the JSON
    # json = JSON.load(RestClient.get('http://www.reddit.com/search.json?q=lions'))
    json = JSON.load(RestClient.get('http://www.reddit.com/search.json?q=#{@topic}'))

    # Capture the title, upvotes, and story URL
    json['data']['children'].each do |child|
      new_thread = Thread.new
      new_thread['title'] = child['data']['title']
      new_thread['url'] = child['data']['url']
      new_thread['upvotes'] = child['data']['ups']
      new_thread['argument'] = 'reddit.com'
      @threads << new_thread
    end
  end
end
