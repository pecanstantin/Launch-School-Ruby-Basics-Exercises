# 6. Using a while loop, print 5 random numbers between 0 and 99. 
# The code below shows an example of how to begin solving this exercise.

# my crappy solution (but I did get it on the plane, figured out rand):
numbers_pass = true
count = 0

while numbers_pass
  rand(100)
  count += 1
  numbers_pass = false if count == 5
end

# shorter: 
numbers = []
while numbers.size < 5 # I guess it's < 5, not < 6, because it goes by index?
  numbers << rand(100)
  # p numbers # with this, it prints 5 arrays, incrementing each by 1
end

puts numbers