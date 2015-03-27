#Mid Term Project 

require_relative 'lib/visual'
require_relative 'lib/reddit'

## this program invites you to select a country and then you will get to read the headline
## news from that country

## this code is to display the choices to the user
puts ''
puts '  Political News from different countries'
puts ''
puts ' 1 : USA News'
puts ' 2 : India News'
puts ' 3 : Italy News'
puts''
puts ' Please enter the number 1,2, or 3 depending on which country you would like to read about' 

## this code checks the user input for errors and makes the user input again
## in case of an error

while true
input = gets.chomp
if input.to_i ==1 then break
end
if input.to_i ==2 then break
end	
if input.to_i ==3 then break
end	
puts 'You can enter only the numbers 1, 2 or 3...please try again'	
end


## this     
stories = []
story1=Reddit.new
if input.to_i ==1 then story1.fetch_stories_1 end
if input.to_i ==2 then story1.fetch_stories_2 end
if input.to_i ==3 then story1.fetch_stories_3 end
story1.stories.each do |x|
title = x.title
h_story=Story.new(title)
h_story.headline
end




