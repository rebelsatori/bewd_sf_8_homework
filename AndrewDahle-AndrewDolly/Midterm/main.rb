
require_relative 'lib/story'
require_relative 'lib/story_board'
require_relative 'lib/remote_source'

def show_message(message)
  puts message
end

def get_input
  gets.chomp 
end

def get_choice
  gets.to_i
end

def get_fortune
  gets.to_i
end


def show_menu
  show_message "Pick one of the following:"
  show_message " 1. Get stories from Mashable"
  show_message " 2. Get stories from Reddit"
  show_message " 3. Get stories from Digg"
  show_message " 4. Add your own lame story"
  show_message " 5. Pull the rip cord and exit immediately"
end

def show_options
  show_message "Pick one of the following:"
  show_message " 1. "
  show_message " 2. "
  show_message " 3. Just exit. Forget the fortune."
end

def add_remote_stories
  RemoteSource.get.each do |story|
    StoryBoard.add_story story
  end
end

def add_manual_stories
  show_message("Please enter a News story title:")
  title = get_input
  show_message("Please give this story a category:")
  category = get_input
  StoryBoard.add_story(Story.new(title, category))
end

def show_story_board
  StoryBoard.stories.each do |story|
    show_message story
  end
end

show_message("Welcome, let's make this as painless as possible.")
puts
show_menu
loop do
  choice = get_choice
  if choice == 1
    add_remote_stories
    show_story_board
    show_menu
  elsif choice == 2
    add_remote_stories
    show_story_board
    show_menu
  elsif choice == 3
    add_remote_stories
    show_story_board
    show_menu
  elsif choice == 4
    add_manual_stories
    show_story_board
    show_menu
  elsif choice == 5 
    break
  else
    show_message "Seriously? How hard is it to input a number - PICK.A.NUMBER.FROM.BELOW!"
    puts
    show_menu
  end
end

puts "Thank you for playing, I know this wasn't the best use of your time so please pick a parting fortune message below and be one your way..."
show_options
loop do
  choice = get_fortune
  if choice == 1
    show_message "You'be been pushing your luck for far too long."
  elsif choice == 2
    show_message "Only a fool seeks wisdom from dessert."
  elsif choice == 3
    break
  else 
    show_message "That's not a number. Your loss I guess."
  end
end




