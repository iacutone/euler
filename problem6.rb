# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural 
# numbers and the square of the sum is 3025  385 = 2640.

# Find the difference between the sum of the squares of the first one hundred 
# natural numbers and the square of the sum.

require 'pry'

def sum_of_squares(lower, upper)
	total = (lower..upper).to_a.inject(0) { |result, element| result + (element * element) }
end

def square_of_sums(lower, upper)
	array = (lower..upper).to_a
	sum = array.inject(0) { |result, element| result + element }
	square = sum * sum
end

def difference(lower, upper)
	square_of_sums(lower, upper) - sum_of_squares(lower, upper)
end