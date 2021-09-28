# 1. Write a program called name.rb that asks the user to type in their name 
# and then prints out a greeting message with their name included. 

puts "Please type in your first name: "
name= gets.chomp
puts " Hi #{name}! It is nice to meet you! "

# 3. Add another section onto name.rb that prints the name of the user 10 times. 
#    You must do this without explicitly writing the puts method 10 times in a row. 
#    Hint: you can use the times method to do something repeatedly.

10.times { puts name }

# 4. Modify name.rb again so that it first asks the user for their first name, 
#    saves it into a variable, and then does the same for the last name. 
#    Then outputs their full name all at once.

print "What is your first name? "
first_name = gets.chomp
print "What is your last name? " 
last_name = gets.chomp
puts "Hi! It's nice to meet you #{first_name} #{last_name}! "

# 5. Look at the following programs...
x = 0
3.times do
  x += 1
end
puts x

# and...

y = 0
3.times do
  y += 1
  x = y
end
puts x

# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?
# ANSWER: 
# => in the first program, 'x' puts out 3. 
# => in the second we get an error because 'x' was not defined outside of the {} block.


