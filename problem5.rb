# 2520 is the smallest number that can be divided by each of the 
# numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible 
# by all of the numbers from 1 to 20?

require 'pry'
require 'prime'

def divisible(num)
	(1..num).to_a.inject(:lcm)
end

# to 10
# 2 3 2 5 7 2 3
# x   x     x   
# to 20
# 2 3 2 5 7 2 3 11 13 2 17 19 
# x   x     x         x
# to 30
# 2 3 2 5 7 2 3 11 13 2 17 19 21 23 5 27 7 29 
# x   x x   x x       x             x    x 