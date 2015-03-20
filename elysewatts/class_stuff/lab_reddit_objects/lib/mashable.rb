class Mashable
  attr_accessor :headlines, :title, :upvotes, :url


  def initialize
    @headlines = []
  end

  def fetch_stories
    mashable_json_string = RestClient.get('http://mashable.com/stories.json')
    mashable_json = JSON.load mashable_json_string 
    mashable_stories = mashable_json['new']
    mashable_stories.each do |story| 
      title = story['title']
        upvotes = story['shares']['total']
        url = story['link']
        headline = Story.new(title, upvotes, url, 'mashable.com')
        @headlines << headline 
      end
    @headlines
  end


end