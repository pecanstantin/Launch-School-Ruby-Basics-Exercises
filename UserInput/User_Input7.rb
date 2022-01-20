# 7. Modify the program so it also requires a user name. The program should
# solicit both the user name and the password, then validate both, and
# issue a generic error message if one or both are incorrect; the error
# message should not tell the user which item is incorrect.

# $ ruby login.rb
# >> Please enter user name:
# John
# >> Please enter your password:
# Hello
# >> Authorization failed!
# >> Please enter user name:
# mary
# >> Please enter your password:
# SecreT
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# root
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# SecreT
# Welcome!

username = "hodong"
password = "LAribs"

loop do
puts "username please"
username_try = gets.chomp

puts "password please"
password_try = gets.chomp

break if username_try == username && password_try == password
puts "name/pass wrong!"
end

puts "yeee"