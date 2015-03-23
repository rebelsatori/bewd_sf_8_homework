class Story

  attr_accessor :stories :title, :selftext, :url
    def initialize(title, selftext, url)
      @stories = []
      @title = title
      @selftext = selftext
      @url = url

    end
end