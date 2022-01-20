# 4. Modify your program so it prints an error message for any inputs
# that aren't y or n, and then asks you to try again. Keep asking for a
# response until you receive a valid y or n response. In addition, your
# program should allow both Y and N (uppercase) responses; case sensitive
# input is generally a poor user interface choice. Whenever possible, accept
# both uppercase and lowercase inputs.

# $ ruby something2.rb
# >> Do you want me to print something? (y/n)
# y
# something

# $ ruby something2.rb
# >> Do you want me to print something? (y/n)
# help
# >> Invalid input! Please enter y or n
# >> Do you want me to print something? (y/n)
# Y
# something

# $ ruby something2.rb
# >> Do you want me to print something? (y/n)
# N

# $ ruby something2.rb
# >> Do you want me to print something? (y/n)
# NO
# >> Invalid input! Please enter y or n
# >> Do you want me to print something? (y/n)
# n

answer = nil # initializing in outer scope to have in outer and inner
loop do
puts "if you want something press y. if you want nothing press n"
answer = gets.chomp.downcase
break if %w(y n).include?(answer) # backwards syntax but ok, include is like this
puts "not this! y or n pls"
end
puts "something" if answer == 'y'