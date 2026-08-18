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

# Create a function that takes a vector of numbers and returns the standard
# deviation manually (like we did the mean). Use if statements to check if the
# vector has only one (or fewer) elements and return NA if so. (Hint: the
# length() function will be helpful!) You don’t need any extra arguments besides
# the vector of numbers.

x <- c(234,235,333,456,678,890)
demeaned_x <- x - mean(x)
squared_demeaned_x <- demeaned_x^2
sum_of_squares <- sum(squared_demeaned_x)
n_minus_1 <- length(x)-1
standev<- sqrt(sum_of_squares/n_minus_1)

sd(x)

new_sd <- function(x){
	demeaned_x <- x - mean(x)
	squared_demeaned_x <- demeaned_x^2
	sum_of_squares <- sum(squared_demeaned_x)
	n_minus_1 <- length(x)-1
	standev<- sqrt(sum_of_squares/n_minus_1)
			return(standev)
}
standev

# Modify your function to remove the NA values before calculating the standard
# deviation. (Hint: the na.omit() function will be helpful!) Add an argument
# na.rm = that defaults to TRUE (the opposite of the na.rm argument in the
# built-in R function sd(), which defaults to FALSE). If na.rm = FALSE, then the
# function should return NA if there are any NA values in the vector.

x <- c(3, 6, NA)

new_sd <- function(x, na.rm = TRUE) {
	if (na.rm) {
		# remove NAs
		new_x <- na.omit(x)
	} else {
		# don't remove NAs
		new_x <- x
	} # will have a new value of x if NAs are removed, same value if not
	if (length(new_x) <= 1) {
		return_val <- NA
	} else {
		# calculate the standard deviation using new x and save as return_val
		demeaned_x <- new_x - mean(new_x)
		squared_demeaned_x <- demeaned_x^2
		sum_of_squares <- sum(squared_demeaned_x)
		n_minus_1 <- length(new_x) - 1
		return_val <- sqrt(sum_of_squares / n_minus_1)
	}
	return(return_val)
}
new_sd(nlsy$income)
sd(nlsy$income)
sd(nlsy$income, na.rm = TRUE)
new_sd(c(1, NA, NA))
new_sd(c(1))

new_sd <- function(x) {
	sd(x, na.rm = TRUE)
}

