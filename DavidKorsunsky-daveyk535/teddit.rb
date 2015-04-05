
# def build_headline (story, upvotes)
#   puts "Story: " + story + ', upvotes: ' + upvotes.to_s
# end

# build_headline("FCC blah", 99)

# def build_headline
#   puts "Enter story:"
#   story = gets.chomp
#   puts "Enter upvotes"
#   upvotes = gets.chomp
#   puts "Story: " + story + ', upvotes: ' + upvotes.to_s
# end

# build_headline


# def build_headline (story, upvotes)
#   "Story: " + story + ', upvotes: ' + upvotes.to_s
# end

# puts build_headline("FCC blah", 8480)
# puts build_headline("hockey news", 9999)

# def get_story

# Pseudo code:
# Ask the user for a word
# If "enter" is pressed, exit
# Else push the word into array
# Continue until enter is pressed on a blank like
# Sort the array
# Print the results

# def check_for_empty (word)
#   if word.length == 0
#     puts "Eureka"
#   end
# end

# puts "Enter a word:"
# word = gets.chomp
# check_for_empty(word)

# def check
#   puts "Please enter a word: "
#   word = gets.chomp
#   if word.length != 0
#     puts word
#     check
#   end
# end

# check

# input = ''
# while input != 'bye'
#   puts input
#   input = gets.chomp
# end
# puts 'Come again soon'

# while true
#   input = gets.chomp
#   puts input
#   if input == 'bye'
#     break
#   end
# end

#99 bottles
# x = 99
# while x >= 0
#   puts x.to_s + " bottles of beer on the wall"
#   x -= 1
# end

#deaf grandma
# puts "Say something to Granny: "

# while true
#   said = gets.chomp
#   if said != said.upcase
#     puts "HEY?????"
#   elsif said == said.upcase && said != 'BYE'
#     puts "NOT SINCE 1999"
#   elsif said == 'BYE'
#     break
#   end
# end


# arr = ["dave", "bill", "jimmy"]
# arr2 = []

# x = 0
# while x <= (arr.length)
#   arr2 << arr.pop
#   x += 1
# end

# puts arr2
# puts arr

# arr = ['dave', 'bill', 'don']

# for x in arr 
#   puts x
# end

# names = ["John Smith", "Dan Boone", "Jennifer Jane", "Charles Lindy", "Jennifer Eight", "Rob Roy"]

# def test (arr)
#   arr.split(' ')
#   puts arr
# end

# test(names)

# 1. Exercise: Reverse an array using a loop and push and pop

arr = [5, 6, 7]

x = 0
arr2 = []

while x < (arr.length -1) 
  arr2 << arr.pop
end

arr = arr2
puts arr


















