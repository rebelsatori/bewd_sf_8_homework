# Nicole Conway Midterm
# this class gets the users input

class Intro
  attr_accessor :name, :city, :usstate

  def welcome
    puts "What is your name?"
	name = gets.chomp
	puts "Input a city and a state in the US and find out the temperature."
	puts "What is the city you would like to look up?"
	city = gets.chomp
	while !check_input(city)
		puts "Please don't enter a number.  What is the city?"
		city = gets.chomp
	end
	puts "What is the state you would like to look up?"
	usstate = gets.chomp
	while !check_input(usstate)
		puts "Please don't enter a number.  What is the state?"
		usstate = gets.chomp
	end
	puts "Welcome #{name}.  I will find the weather in #{city}, #{usstate}."
    show1 = Weather.new(city, usstate)
    show1.get_weather(city, usstate)
  end

	def check_input(input)
		if  input.to_i.to_s == input
			false
		else		
			true
		end
	end
end

