#1. Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.
# sun = ['visible', 'hidden'].sample

# puts "The sun is so bright!" if sun == 'visible'

#2. Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.

# puts "The clouds are blocking the sun!" unless sun == 'visible'

#3. Write an if statement that prints "The sun is so bright!" if sun equals
# visible. Also, write an unless statement that prints "The clouds are blocking
# the sun!" unless sun equals visible.
# When writing these statements, take advantage of Ruby's expressiveness and
# use statement modifiers instead of an if...end statement to print results
# only when some condition is met or not met.

# puts "The sun is so bright!" if sun == 'visible'
# puts "The clouds are blocking the sun!" unless sun == 'visible'

#4. Boolean is randomly assigned as true or false.
# boolean = [true, false].sample

# Write a ternary operator that prints "I'm true!" if boolean equals true
# and prints "I'm false!" if boolean equals false.

# puts boolean ? "I'm true!" : "I'm false!"
# LS: boolean ? puts("I'm true!") : puts("I'm false!")

# 6. Write a case statement that prints "Go!" if stoplight equals 'green',
# "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

# stoplight = ['green', 'yellow', 'red'].sample

# # case stoplight
# # when 'green'
# #   puts "Go!"
# # when 'yellow'
#   puts "Slow down!"
# else
#   puts "Stop!"
# end

#7. Convert the case statement to an if statement.

# if stoplight == 'green'
#   puts "Go!"
# elsif stoplight == 'yellow'
#   puts "Slow down!"
# else
#   puts "Stop!"
# end

# case is better here because it only references stoplight once

#8. Write an if statement that returns "Be productive!" if status equals
# 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value
# of the if statement to a variable and print that variable.

# status = ['awake', 'tired'].sample

# alert = if status == 'awake'
#   "Be productive!"
# else
#   "Go to sleep!"
# end

# puts alert
# so you can just assign an if statement to a variable like this

#9. Currently, "5 is a cool number!" is being printed every time the program
# is run. Fix the code so that "Other numbers are cool too!" gets a chance
# to be executed.

# number = rand(10) #between 0 and 9!

# if number == 5 # added one =
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

#10. Reformat the following case statement so that it only takes up 5 lines.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end