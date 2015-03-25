

require 'json'
require 'rest-client'

class Category
  attr_accessor :name

  def initialize(name = 'hot')
    @name = name
    @stories = stories
  end

  def request
    JSON.load(RestClient.get('http://mashable.com/stories.json'))
  end

  def stories
    get_stories
  end

  def get_stories
    stories = request[@name]
    stories.map do |json| 
      Story.new(json)
    end
  end


end
