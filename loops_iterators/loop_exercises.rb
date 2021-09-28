# Loop and iterators exercises

# 1. What does the each method in the following program return after it is
#    finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# ANSWER: [1, 2, 3, 4, 5]. 
# '.each' will alway return the original array

# 2. Write a while loop that takes input from the user, performs an action,
#    and only stops when the user types "STOP". Each loop can get info from the user.

input = ""
while input != "STOP" do
  puts "Please type in some input"
  text = gets.chomp
  puts "Want to try that again?"
  input = gets.chomp
end 




