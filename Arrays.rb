# 1. Select 'fish' from pets, assign the return value to a variable named my_pet, 
# then print the value of my_pet.

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pet = pets[2]
# puts "I have a pet #{my_pet}!"

# 2. Write some code that selects 'fish' and 'lizard' from the pets array
# - select the two items at the same time. Assign the return value to a
# variable named my_pets, then print the contents of my_pets as a single string.

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pets = pets[2..3] # to remember!
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# 3. Remove 'lizard' from my_pets then print the value of my_pets.

# my_pets.pop
# puts "I have a pet #{my_pets[0]}!" #still an array so [0] is needed

# 4. Select 'dog' from pets, add the return value to my_pets,
# # then print the value of my_pets.

# my_pets.push(pets[1])
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# 5. Use Array#each to iterate over colors and print each element.

# colors = ['red', 'yellow', 'purple', 'green']

# colors.each do |x|
#   puts "I'm the color #{x}!"
# end

# 6. Use Array#map to iterate over numbers and return a new array with each
# number doubled. Assign the returned array to a variable named doubled_numbers
# and print its value using #p.

# numbers = [1, 2, 3, 4, 5]

# doubled_numbers = numbers.map do |x| #.map returns array based on return value of the block
#   x * 2 # since this is the only code, this is return value of block
# end # each element in the new array is return value of block /at each iteration/

# p doubled_numbers

# 7. Use Array#select to iterate over numbers and return a new array that
# contains only numbers divisible by three. Assign the returned array to a
# variable named divisible_by_three and print its value using #p.

# numbers = [5, 9, 21, 26, 39]

# divisible_by_three = numbers.select do |x|
#    x % 3 == 0 # and only true numbers get added
# end
# #.select returns a new array containing elements selected only if
# # the block's return value evaluates as true.

# p divisible_by_three
# # numbers.map would make [false, true, true, false, true] here

# 9. Flatten and print this array. The printed result should not have any subarrays, 
# but should have all of the original strings and numbers from the original array.

# favs = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# flat_favs = favs.flatten!
# puts favs # irb doesn't show the 'correct' result tho

# 10. Compare array1 and array2 and print true or false based on whether they match.

array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2

