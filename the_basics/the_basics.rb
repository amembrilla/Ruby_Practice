# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.

puts "Art" + "Membrilla"

# 2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

thousands = 5372 / 1000
hundreds = 5372 % 1000 / 100
tens = 5372 % 100 / 10
ones = 5372 % 10 

puts "thousands: #{thousands}"
puts "hundreds: #{hundreds}"
puts "tens: #{tens}"
puts "ones: #{ones}" 

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. 
#    Then use the puts command to make your program print out the year of each movie to the screen. 
#    The output for your program should look something like this.

movies = { "jaws" => 1975,
           "anchorman" => 2004,
           "man_of_steel" => 2013,
           "a_beautiful_mind" => 2001,
           "the_evil_dead" => 1981 }

movies.each { |movie, year| puts year }

# 4. Use the dates from the previous example and store them in an array. 
# => Then make your program output the same thing as exercise 3.
dates = [ 1975, 2004, 2013, 2001, 1981 ]
puts dates

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
factorial_1 = 5 * 4 * 3 * 2 * 1
factorial_2 = 6 * factorial_1
factorial_3 = 7 * factorial_2
factorial_4 = 8 * factorial_3

puts factorial_1
puts factorial_2
puts factorial_3
puts factorial_4

# 6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
puts 3.21**2
puts 83.43**2
puts 3746.32**2

# 7. What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
# from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
  # answer: there is a syntax error on line 2 of the code where a ')' was used instead of a '}'









