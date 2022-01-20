# 8. Write a method that accepts one argument, but doesn't require it. 
# The parameter should default to the string "Bob" if no argument is given. 
# The method's return value should be the value of the argument.

# The code should output true twice.

def assign_name(name = 'Bob') # wow so you can define default within this
  name
end
  
puts assign_name('Kevin') == 'Kevin' # okay then, do this
puts assign_name == 'Bob'