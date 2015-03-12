
puts "aww, it's a sweet lil old lady! say hi to grandma.."

you_say = gets.chomp
grandma_says = ["SPEAK UP I CAN'T HEAR YOU", "NOT SINCE 1938!", "THAT'S MY BAD EAR.", "WHAT'S THAT?", "HUH?", "REPITE POR FAVOR"]

until you_say == "BYE!"
	puts grandma_says.sample
	you_say = gets.chomp
end


