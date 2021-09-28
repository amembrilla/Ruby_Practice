# 1. Arrays are an extremely valuable data set. They can be
#    used to store many different kinds of data and you'll see them very often
#    in the wild. Ruby's array class has lots of built-in methods that can be 
#    used to perform many of the daily functions that programmers use. Let's 
#    practice working with arrays for a bit with some exercises.


arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.include?(3)

# 2. What will the following programs return? What is the value of arr after each?


1. arr = ["b", "a"] # return ["b", "a"]
   arr = arr.product(Array(1..3)) # return [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
   arr.first.delete(arr.first.last) # return 1

# ANSWER: arr =[["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. arr = ["b", "a"] # return ["b", "a"]
   arr = arr.product([Array(1..3)]) # return [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
   arr.first.delete(arr.first.last) # return [1, 2, 3]

#ANSWER: arr = [["b"], ["a",[1, 2, 3]]]

# 3. How do you return the word "example" from the following array?

1. arr = [["test", "hello", "world"], ["example", "mem"]]

# ANSWER: arr.last.first

# 4. What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1] 

1. arr.index(5) # return 3. "()" returns the first index number (position) that matches the value in "()"
2. arr.index[5] # NoMethodError (undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>)
3. arr[5] # return 8. returns the value of the fifth position in the array.

# 5. What is the value of the a, b, and c in the following program?
 
string = "Welcome to America!"
a = string[6] # return "e"
b = string[11] # return "A"
c = string[19] # return "nil"

# 7. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

names = ["joe", "josh", "james", "sam", "joel"]

names.each_with_index { | name, index | puts "#{index}. #{name}" }

# 8. Write a program that iterates over an array and builds a new array that is
#    the result of incrementing each value in the original array by a value of 
#    2. You should have two arrays at the end of this program, The original array
#    and the new array you've created. Print both arrays to the screen using the 
#    p method instead of puts.

array = [3, 7, 5, 7, 2, 32]
new_arr = array.map { |number| number  + 2 }

p array 
p new_arr




