# Back-End Web Development
# --------

# MIDTERM  REQUIREMENTS

# Create a command line based application that fulfills these criteria:

# -  Create a directory in your personal homework folder called "midterm" and put all files there.
# -  Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
# -	Connects to a 3rd party api where the call varies based on what the user gives you.
# -	Must be object oriented. You must instantiate classes. The only file that can run without classes is your main.rb (look at past homework for how this works; remember to use `require_relative`).
# -	Push code on Github.


# GRADING
# Your midterm is considered completed if it meets all requirements above. Your instructor and T.A will provide you with feedback!

# http://www.reddit.com/search.json?q=lions
# 'https://api.admoda.com/v1/advertiser/stats/dates?from_date=2013-07-01&to_date=2013-07-18&campaign_id=91636'
# 'Authorization: Token token="9a400eaa8328f3f7eeb3206ee7928204"'

require_relative 'dataset'
require_relative 'admoda'

new_admoda = Admoda.new
new_admoda.fetch_data

# require 'json'
# require 'rest-client'

# reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
# puts reddit_json['data']['children']['data'].class
