# Fizzbuzz folder should contain a single file "fizzbuzz.rb" that does the following:
# (CHALLENGE: do it in javascript)
 
# prints numbers 1-100
# when the number is divisible by 3, say fizz
# when the number is divisible by 5 say buzz
# when the number is divisible by 3 and 5 say fizzbuzz

(1..100).each do |number|
	if number % 15 == 0
		puts "fizzbuzz"
	elsif number % 3 == 0
		puts "fizz"
	elsif number % 5 == 0
		puts "buzz"
	else
		puts number
			
	end
			
end
