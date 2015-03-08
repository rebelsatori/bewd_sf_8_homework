require 'json'
require 'rest-client'

#First get the list of theme camps and save to a variable
json = RestClient.get('playaevents.burningman.com/api/0.2/2013/camp/')
bm_camps = JSON.load json

#Next get the list art installations and save to a variable
json = RestClient.get('playaevents.burningman.com/api/0.2/2013/art/')
bm_art = JSON.load json

#Build method to parse array and only display the first ten results
def bm (arr)
  i = 0 
  arr.each do |x|
    puts x['name']
    i += 1
    if i == 10
      break
    end
  end
end

#Call method for camps and display results to the terminal
camp = bm(bm_camps)
puts camp

#Call method for art installations and display results to the terminal
art = bm(bm_art)
puts art