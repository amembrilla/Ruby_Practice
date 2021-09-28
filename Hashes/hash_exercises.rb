# 1. Given a hash of family members, with keys as the title of an array of
#    names as the values, use Ruby's built-in select method to gather only
#    immediate familty memebers' names in to a new array. 

family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
         }

immediate_family = family.select { |k, v| k == :sisters || k == :brothers  }

p immediate_family.to_a { | k, v| puts v } # incorect because it returns the keys as well as the values into one large array.

p immediate_family.values.flatten # correct. prints just the values of the sister names into an array.

# 2. Look at Ruby's merge method. Notice that it has two versions. What is the 
#    difference between merge and merge! ? Write a program that uses both and 
#    illustrate the differences.

# ANSWER merge, merges two hashes into a new hash non-destructively 
#        merge! merges two hashes into a new merged hash permanently 

player = { name: "dan" }
golf_result = { score: 77 }

puts player.merge(golf_result) # outputs {:name=>"dan", :score=>77}
puts player # outputs {:name=>"dan"}
puts golf_result # outputs {:score=>77}

player.merge!(golf_result)
puts player # outputs {:name=>"dan", :score=>77}
puts golf_result # outputs {:score=>77}

# 3. Given the following expression, how would you access the name of the person?

person = {name: 'bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]

# 6. Given the following code...
x = "hi there"
my_hash = { x: "some value" }
my_hash2 = { x => "some value" }

p my_hash # outputs => {:x => "some value"}
p my_hash2 # outputs => {"hi there" => "some value"}

# What's the difference between the two hashes that were created?
# ANSWER: my_hash uses the x as the key for the hash with a value of "some value"
#         my_hash2 uses the pre defined variable x as the key instead of a symbol.

# 7. If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array
# ANSWER: B. There is no method call 'keys' for Array objects.








