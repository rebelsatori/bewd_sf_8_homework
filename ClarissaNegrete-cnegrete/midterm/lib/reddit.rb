# HINT: You will have to add an initialize method!
require 'json'
require 'rest-client'
require_relative 'story_list'


class Reddit

  def initialize(category)
    @category = category
    @stories = StoryList.new
  end

  def get_stories
    @stories.clear_stories

    reddit_json = JSON.load(RestClient.get(self.category_url))
    reddit_json = reddit_json['data']['children'].map do |story|
      @stories.add_story Story.new(story['data']['title'], story['data']['ups'], story['data']['url'])
    end
  end

  def show_stories
    @stories.show_stories
  end

  def category_url
    "http://www.reddit.com/user/caindaddy/m/#{@category}.json"
  end

  # def self.get_category(category)
  #   reddit_json = JSON.load(RestClient.get("http://www.reddit.com/user/caindaddy/m/#{category}.json"))
  #   reddit_json = reddit_json['data']['children'].map do |story|
  #     Story.new(story['data']['title'], story['data']['ups'], story['data']['url'])
  #   end
  # end
end