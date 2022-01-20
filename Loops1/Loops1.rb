# 3. Make it so the loop iterates 5 times instead of just once.
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# If the break statement is moved up one line so it runs before
# iterations is incremented, what would need to be changed?
iterations = 5

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations > 4 # iterations == 5
  iterations += 1
end
# instead of puts 5, adds 1, break before it puts
# it is puts 5, break now, before it adds 1 and puts more

# 4. Make it so the loop stops iterating when the user inputs 'yes'.
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer == 'yes'
  puts 'Well, up to you!'
end
# and if it's like this, break if on one line, then we don't need a
# second "end". we do need it if the "if" is separate

# 5. Make it so the code below prints "Hello!" 5 times.
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

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

# 7. The following code outputs a countdown from 10 to 1. 
# Modify the code so that it counts from 1 to 10 instead.
count = 1

until count > 10
  puts count
  count += 1
end

# 8. Given the array of several numbers below, 
# use an until loop to print each number.
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size # here the size is 4 # yeah, so .size is by index
  puts numbers[count]
  count += 1
end
# Count ends up as iteration control as well as correct index pointing 
# that we're printing

#Jack H.:
numbers = [7, 9, 13, 25, 18]

until numbers.empty?
  puts numbers.shift
end

# 9. The code below shows an example of a for loop. 
# Modify the code so that it only outputs i if i is an odd number.
for i in 1..100
  puts i if i.odd?
  # or: puts i if i % 2 != 0
end

# failure: 
for i in 1..100
if i = i % 2 != 0
  puts i
end
end
# this puts out 50 true statements, oddly

# 10. Your friends just showed up! Given the following array of names, 
# use a for loop to greet each friend individually.
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end