

def fizzbuzz(number)
	if number % 3 ==0 && number%5==0
		'FizzBuzz'
	elsif number % 3==0
		'Fizz'
	elsif number % 5==0
		'Buzz'
	else 
		number
	end
end


def fizzbuzz(number)
	mult_3 = number % 3 ==0
	mult_5 = number % 5 ==0

	if mult_3 && mult_5
		'FizzBuzz'
	elsif mult_3
		'Fizz'
	elsif mult_5
		'Buzz'
	else 
		number
	end
end






# =============================================================================
# DO NOT EDIT BELOW THIS LINE!
# =============================================================================

# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected.nil? and 'nil' or expected} to match #{actual}" unless expected == actual
end

# Tests
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

# Output!
1.upto(100) do |number|
  puts fizzbuzz(number)
end

