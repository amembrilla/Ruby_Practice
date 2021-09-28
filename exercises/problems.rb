# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#    and print out each value
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each { |num| puts num }

# 2. Same as above, but only print out values greater than 5.
array.each  { |num| puts num if num > 5 }

# 3. Now, using the same array from #2, use the select method to extraxt all
#    odd numbers inito a new array

array.select { |num| puts num if num.odd? }
# or
array.select { |num| puts num if num % 2 != 0 }

# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.
array << 11
p array

array.unshift(0)
p array

# 5. Get rid of 11. And append a 3.
array.pop
p array

array << 3
p array 

# 6. Get rid of duplicates without specifically removing any one value.
p array.uniq

# 7. What's the major difference between an Array and a Hash?
# Answer: an Array lists items and a Hash has key/value pairs

# 8. Create a Hash, with one key-value paiir using both Ruby syntax styles.
style = { new: 2}
names = { :name => 'Dan' }

# 9. Suppose you have a hash 
h = {a:1, b:2, c:3, d:4}
# 9.1 Get the value of key ':b'
# 9.2 Add to this hash the key:value pair '{e:5}'
# 9.3 Remove all key:value pairs whose value is less than 3.5
p h[:b]

h[:e] = 5
p h

h.delete_if { |k,v| v < 3.5 }
p h

# 10. Can Hash values be arrays? Can you have an array of hashes? (give ecxamples)
# yes hash values can be arrays. hash = {names: ['bob','susan', 'frank']}
# yes you can have an array of hashes. ex. array = [{name: "bob"}, {name: "joe"}, {name: "susan"}]

# 11. Given the following data structures, write a program tha copies the
#     information from the array into the empty hash that applies to the 
#     empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts


# 13. Using the hash you created from the previous exercise, demonstrate how you
#     would access Joe's email and Sally's phone number.

puts "Joe Smith's email is #{contacts["Joe Smith"][:email]}"
puts "Sally Johnson's phone number is #{contacts["Sally Johnson"][:phone]}"

# 14. Take the following array
a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

#     and turn it into a new array that consists of strings containing one word.
#     ex.["white snow", etc...] --> ["white", "snow" etc...]. Look into using 
#     Array's map and flatten methods, as well as String split method.

a = a.map { |e| e.split }
a = a.flatten
p a 

# 15. What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts " These hashes are not the same!"
end

# should print out "These hashes are the same!"
# Answer: "These hashes are the same"

# 16.
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name , hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
 p contacts

# 17.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do | (name, hash), idx |
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
 p contacts




