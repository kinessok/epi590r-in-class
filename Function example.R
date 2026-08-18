# start out with a number to test
x <- 3
# you'll want your function to return this number
x^2

square <- function(x) {
	squared_val <- x^2
	return(squared_val)
}

square_val
# test it out
square(x)
square(53)
53^2 # does this match?

# Write a function to raise to any power. You don’t just want to square numbers,
# you want to raise them to higher powers too. Make a function that uses two
# arguments, x for a number, and power for the power. Call it raise().

raise <- function(x, power) {
	power_val <- x^power
	return(power_val)
}
# test with
raise(x = 2, power = 4)
# should give you
2^4

# Change your raise() function to default to squaring x when the user doesn’t
# enter a value for power.
raise <- function(x, power =2 ) {
	power_val <- x^power
	return(power_val)
}

# test
raise(x = 5)
# should give you
5^2
