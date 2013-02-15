############################################################
#
#  Name:        Sean Glover
#  Date:        02/05/2013
#  Description: Prompt user for series of numbers and reverse order
#
############################################################

def reverse_digit(number, current_digit = 0, reverse_number = 0)

=begin
  # original calculation to reverse integer - intentionally commented but
  # retained to show how the loop was done prior to combining in a single line below.
  while number != 0
    current_digit = number - ((number / 10) * 10) # populates variable with the individual digit
    reverse_number = (reverse_number * 10) + current_digit # moves current reversed number and adds current digit
    number = number / 10 # reduces number to populate next current_digit and allow break from loop
  end
=end

  # perform calculations to reverse integer
  reverse_number = reverse_number * 10 + ( number - ( ( number = number / 10 ) * 10 ) ) while number != 0

  # return the reversed integer
  return reverse_number
end

# prompt user for integer
print "Enter 2 or more numerical characters: "

# store users input and initialize variables for calculation
user_number = gets.to_i

# invoke method and print the result to screen
puts reverse_digit(user_number)