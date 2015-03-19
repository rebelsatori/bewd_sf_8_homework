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

require_relative 'reddit'
require_relative 'thread'

new_reddit = Reddit.new('lions')
new_reddit.fetch_threads
puts new_reddit.threads.first.headline

# I realize this is pretty weak attempt but I tried to reach out for help with a more difficult API
# and didn't hear anything back. Unfortunately, I couldn't get this one working so I appreciate any
# guidance as to how I can fix the problem.  Thanks!