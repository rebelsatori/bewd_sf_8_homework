=begin booger = 90
carton = "a"
snot = (carton + booger.to_s) + carton      
a = booger.to_s.upcase
b = "#{a}#{booger}"
snot += (booger + snot.to_i).to_s
puts b + carton
booger = booger.to_s + "booger" + b
puts booger 
=end

=begin def my_foo2(a , b)
	return a * b - 42
end

puts my_foo2(500, 100)

def what_up(a, b)
	return a * b - 42
end

puts what_up(500, 400)

def not_sure(a, b)
	return "nada"
	a * b - 42
	dfas
	dsfsdfsd
	asdfsdf
end

puts not_sure(333, 333)
=end

=begin def strings_1(a, b)
	a = gets.chomp.to_s
	b = gets.chomp.to_s
	return a + b
	
end


puts strings_1('you suck', ' arse!')
=end

=begin def foo(var_of_limited_scope)
	puts "#{var_of_limited_scope} is inside the method foo"
end

foo("hello world")
=end

=begin def triple_adder(a, b, c)
	x = a.to_s + b.to_s + c.to_s
	"#{x}!"
end

#puts triple_adder('You', ' Are', ' Ugly')
=end

=begin require "open-uri"
def count_image_tags(url)
   pattern = "<img"
   page = open(url).read
   tags = page.scan(pattern)
   puts "The site #{url} has #{tags.length} img tags"
end

count_image_tags("http://www.wsj.com")
=end

require "open-uri"
def count_div_tags(url)
   pattern = "<div"
   page = open(url).read
   tags = page.scan(pattern)
   puts "The site #{url} has #{tags.length} div tags"
end  

count_div_tags("http://www.mashable.com")
#improved
def just_count_tags(page, tag)
   pattern = /<#{tag}\b/
   tags = page.scan(pattern)
   return tags.length
end