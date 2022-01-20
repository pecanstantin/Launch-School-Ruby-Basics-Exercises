# 6. Write a program that displays a welcome message, but only after the
# user enters the correct password, where the password is a string that is
# defined as a constant in your program. Keep asking for the password until
# the user enters the correct password.

# $ ruby password.rb
# >> Please enter your password:
# Hello
# >> Invalid password!
# >> Please enter your password:
# Secret
# >> Invalid password!
# >> Please enter your password:
# SecreT
# Welcome!

password = "LAribs"

loop do
puts "password please"
password_try = gets.chomp
break if password_try == password # break if %w(LAribs).include?(password)
puts "show me the ribs!"
end

puts "yeee"