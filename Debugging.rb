# # 1. 
# def find_first_nonzero_among(numbers)
#   numbers.each do |n|
#     return n if n.nonzero?
#   end
# end

# puts find_first_nonzero_among([0, 0, 1, 0, 2, 0]) # should be an array of integers, not just integers
# puts find_first_nonzero_among([1]) # without array it gives a NoMethodError
# # bc method tries to call each on integer 1, and /integers don't have each method/

# 3. When the user inputs 10, we expect the program to print The result is 50!, but that's not the output we see. Why not?
# def multiply_by_five(n)
#   n * 5
# end

# puts "Hello! Which number would you like to multiply by 5?"
# number = gets.chomp.to_i # added .to_i

# puts "The result is #{multiply_by_five(number)}!"

# 4. Add 'bowser' to dog: without deleting the other dogs.
# pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

# pets[:dog].push('bowser') # got .push right but didn't know syntax

# p pets

# 5. Why is this wrong?
# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.select do |n| # changed from .map.
#   n.even? # don't need 'n if n.even?'
# end

# p even_numbers # .map would make it [nil, 2, nil, 6, nil, nil, 8]

# # 6. Fix it!!!
# def get_quote(person)
#   if person == 'Yoda'
#     'Do. Or do not. There is no try.'
#   end

#   if person == 'Confucius'
#     'I hear and I forget. I see and I remember. I do and I understand.'
#   end

#   if person == 'Einstein'
#     'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end

# puts 'Confucius says:'
# puts '"' + get_quote('Confucius') + '"'

# #fixed:
# def get_quote(person)
#   if person == 'Yoda'
#     'Do. Or do not. There is no try.'
#   elsif person == 'Confucius'
#     'I hear and I forget. I see and I remember. I do and I understand.'
#   elsif person == 'Einstein'
#     'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end # before it was if/if/if. can add return statements, or refactor like above
# # and before it was returning the last call, Einstein, but not the first two
# # it was 'if' and method took last if as true, gave itself 'Einstein',
# # so passing in anything else evaluated it as false. insane

# 7. Why is the balance 70.6 instead of 238?
# balance = 0

# january = {
#   income: [ 1200, 75 ],
#   expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
# }

# february = {
#   income: [ 1200 ],
#   expenses: [ 650, 140, 320, 46.7, 122.5 ]
# }

# march = {
#   income: [ 1200, 10, 75 ],
#   expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
# }

# def calculate_balance(month)
#   plus  = month[:income].sum
#   minus = month[:expenses].sum

#   plus - minus
# end

# [january, february, march].each do |month|
#   balance += calculate_balance(month) # got that it was just reassigned to march
# end # and solution was just to add + to the = above

# puts balance

# 8. What's wrong?

# colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
# things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# colors.shuffle!
# things.shuffle!

# i = 0
# loop do
#   break if i > things.length - 1 # changed from 'colors.length'
#   # colors is longer, and it starts at 0, so it was off
#   if i == 0
#     puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
#   else
#     puts 'And a ' + colors[i] + ' ' + things[i] + '.'
#   end

#   i += 1
# end

# # We might not always know which array is shorter, so picking the shorter
# # one by hand is not the best solution. How can you change the break condition,
# # such that the loop always stops once we hit the end of the shorter array?

# break if i >= [colors.length, things.length].min

# 9. Why is return 0 and not 120?

# def digit_product(str_num)
#   digits = str_num.chars.map { |n| n.to_i }
#   product = 1

#   digits.each do |digit|
#     product *= digit
#   end

#   product # without this, p is [1, 2, 3, 4, 5], because it's now doing product?
# end

# p digit_product('12345')

# 10. What's wrong?
# Each player starts with the same basic stats.

# player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# # Then the player picks a character class and gets an upgrade accordingly.

# character_classes = {
#   warrior: { strength:  20 },
#   thief:   { dexterity: 20 },
#   scout:   { stamina:   20 },
#   mage:    { charisma:  20 }
# }

# puts 'Please type your class (warrior, thief, scout, mage):'
# input = gets.chomp.downcase

# player.merge!(character_classes[input.to_sym]) # added .to_sym
# # when we get user input, it is /always a string/.

# puts 'Your character stats:'
# puts player

NUMBERS = [1, 2, 3]

def test
  puts NUMBERS.inspect
end

test
