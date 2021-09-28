# 2. What will the following program print to screen? What will it return?

def execute(&block)
  block
end

p execute {puts "Hello from inside the execute method!" }
# my_answer: Hello from inside the execute method!
# result: nothing is printed becuase the block is never actiivaed with tthe .call
#         method. The result method returns a Proc object.

# 3. What is exceptioin handling and what problem does it solve?
# my_answer: its a way of anticipating an error and allowing the 
#            the program to run then next command without exiting 
#            the program.

# 4. Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
    block.call
end

execute { puts "Hello from inside the execute method!" }