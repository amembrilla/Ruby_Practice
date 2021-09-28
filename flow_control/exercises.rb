# 1. Write down whether the following expressions return true or false
#    Then type the expressions in to irb to see the results.

(32 * 4) >= 129  # => false
false != !true # => false
true == 4 # => false
false == (847 == '874') # => true
(!true || (!(100 / 5) == 20 ) || ((328 / 4) == 82)) || false # => true

# 2. Write a method that takes a string as an argument. The method should 
#    return a new, all-caps version of the string, only if the string is 
#    longer than 10 characters. Example: change "hello world" to "HELLO 
#    WORLD". (Hint: Ruby's String class has a few methods that would be 
#    helpful. Check the Ruby Docs!)

def full_name(name)
  if name.length > 10
    name.upcase
  else
    name
  end
end

puts full_name("Joe Blow")
puts full_name("Jeezy Hamilton")

# 3. Write a program that takes a number from the user between 0 and 100 
#    and reports back whether the number is between 0 and 50, 51 and 100, 
#    or above 100.

print "type in a number between 0 and 100: "
number = gets.chomp.to_i

if number < 0
  puts "no negative numbers allowed."
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif 
  number <= 100
  puts "#{number} is between 51 and 100"
else 
  number > 100
  "#{number} is greater than 100"
end

# 4. What will each block of code below print to the screen? Write your 
#    answer on a piece of paper or in a text editor and then run each 
#    block of code to see if you were correct.

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
# FALSE

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# Did you get it right?

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# Alright now!

# 5. Why do you get this error and how can you fix it?
# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
# ANSWER: becuase Ruby is expecting an 'end' to close out out the method.
