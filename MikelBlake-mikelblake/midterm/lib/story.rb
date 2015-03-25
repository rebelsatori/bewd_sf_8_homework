class Story

    attr_accessor :title, :selftext, :url
    def initialize(title, selftext, url)
      @title = title
      @selftext = selftext
      @url = url
    end
end