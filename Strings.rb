#1. Create an empty string using the String class and assign it to a variable.
# empty_string = String.new # you can't do this vice versa for some reason

#2. Modify the following code so that double-quotes are used instead of single-quotes.

# puts 'It\'s now 12 o\'clock.'
# puts "It's now 12 o'clock."
# alt: puts %!It's now 12 o'clock.!

# so single quotes don't allow for escape sequences,
# UNLESS it's the escaping of other single quotes, like in example.

#3. Using the following code, compare the value of name with the string 'RoGeR'
# while ignoring the case of both strings. Print true if the values are the same;
# print false if they aren't. Then, perform the same case-insensitive comparison,
# except compare the value of name with the string 'DAVE' instead of 'RoGeR'.
# name = 'Roger'

# puts name.casecmp('RoGeR') == 0 # .casecmp gives 0 because the strings are equal
# puts name.casecmp('DAVE') == 0 # it's 1 because 'name' is larger than argument

#5. Using the following code, combine the two names together to form a
# full name and assign that value to a variable named full_name. Then, print the value of full_name.

# first_name = 'John'
# last_name = 'Doe'
# full_name = first_name + ' ' + last_name
# or full_name = "#{first_name} #{last_name}"
# or full_name = [first_name, last_name].join(' ')
#in other situations you can do first_name << last_name

#7. Invoke a destructive method on greeting so that Goodbye! is printed
# instead of Hello!.

# greeting = 'Hello!'

# greeting.gsub!('Hello!', 'Goodbye!')
# puts greeting

#8. Split the value of alphabet by individual characters and print each character.

# alphabet = 'abcdefghijklmnopqrstuvwxyz'

# puts alphabet.split('') # had it right, but didn't call puts here and so the next line's puts showed no change

#9. Given the following code, use Array#each to print the plural of each word in words.
# words = 'car human elephant airplane'

# words.split(' ').each do |x| #.split turns it into separate strings, and .each is able to immediately take those strings
#   puts x + 's' # straightforward!
# end

#10. 

colors = 'blue pink yellow orange'

puts colors.include?('yellow') # don't need if/else statement, .include already has true/false
puts colors.include?('purple')