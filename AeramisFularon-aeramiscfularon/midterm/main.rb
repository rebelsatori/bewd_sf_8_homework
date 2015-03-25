
require 'json'
require 'rest-client'

require_relative 'lib/story'
require_relative 'lib/mashable'

new_mashable = Mashable.new
mashable_stories = new_mashable.fetch_stories

# mashable_stories.each do |x|
#   x.headline
# end

puts '************************* Mashable\'s Top Stories *************************'

loop do
  puts 'What would you like to search for? Please enter a keyword or type \'quit\'.'

  keyword = gets.chomp.to_s
  puts "\n"
  if keyword.split.size > 1
  	puts 'Please enter one keyword.'
  elsif keyword == 'quit'
  	puts 'Goodbye!'
  	break
  else
  	mashable_stories.each do |x|
  	  x.search(keyword)
  	end
  end
  puts "-------------------------------------------------------------------------------------- \n \n"
end