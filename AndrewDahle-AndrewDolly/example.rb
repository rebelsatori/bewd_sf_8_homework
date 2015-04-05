puts 'hello there, and what\'s your name?'
name = gets.chomp
puts 'your name is '+name+'? What a name!'
puts 'Pleased to meet you, '+name+'.'
puts 'And what about your middle and last name?'
midd = gets.chomp
puts 'ok, and your last?'
last = gets.chomp
puts 'got it. your name is '+ name +' '+ midd +' '+ last+' , is that right?'
answer = gets.chomp
puts answer+'! now tell me your fav number'
puts 'did you know there are' +name.length.to_s+ ' characters in your first name'

