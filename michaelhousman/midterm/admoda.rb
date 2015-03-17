# HINT: You will have to add an initialize method!

class Admoda
  # TODO: This class should have an attribute called "stories".
  attr_accessor :datasets
  def initialize
    @datasets = []
  end

  # HINT: Start here!
  def fetch_data
    require 'json'
    require 'rest-client'

    #   1. Save the webpage data as a JSON
        json = JSON.load(RestClient.get('https://api.admoda.com/v1/advertiser/stats/dates?from_date=2013-07-01&to_date=2013-07-18&campaign_id=91636'))

    #   2. Your code should find the title, upvotes, and story URL
        json['data']['children'].each do |child|
          # story = {}
          new_dataset = Dataset.new
          # new_story['title'] = child['data']['title']
          # new_story['url'] = child['data']['url']
          # new_story['upvotes'] = child['data']['ups']
          # new_story['argument'] = 'reddit.com'
          @datasets << new_dataset
        end

    #   3. Using that data, create a new Story object with the title, votes,
    #      story URL, and 'reddit.com' for the site argument
    #   4. Store a list Story objects into the stories attribute
    #   5. Return the list of story objects
  end
end
