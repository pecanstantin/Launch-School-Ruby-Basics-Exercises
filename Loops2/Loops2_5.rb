#5. Modify the code below so that the user's input gets added to the numbers array. 
# Stop the loop when the array contains 5 numbers.

# LS:
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers.push(input)
  break if numbers.size == 5
end
puts numbers

# David Dickinson:
numbers = []

loop do
  puts 'Enter any number:'
  numbers << gets.chomp.to_i
  break if numbers.size == 5
end
p numbers