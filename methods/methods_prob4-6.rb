# 4. What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippee")

# the explicit 'return' on like 3, causes ruby to exit
# from the method and will not allow line 4 to be executed.

# 5. 1) Edit the method definintion in exercise #4 so that 
#       it does print words on the screen. 
#    2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

p scream("Yippee")

# 2) still returns nil
