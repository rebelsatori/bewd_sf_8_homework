class Mashable

  attr_accessor :stories

  def initialize
  	@stories = []
  end

  def fetch_stories
  	json = RestClient.get('http://mashable.com/stories.json')
    mashable_stories = JSON.load json

    mashable = mashable_stories['new']

    mashable.each do |x|
      title = x['title'].to_s
      url = x['short_url'].to_s
      excerpt = x['excerpt'].to_s
      content = x['content']['plain'].to_s

      story = Story.new(title, url, excerpt, content)
      @stories << story
    end

    @stories
  end

end