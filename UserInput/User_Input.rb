# 1. Write a program that asks the user to type something in, 
# after which your program should simply display what was entered.
puts ">> Type it"
answer = gets
puts answer

# 2. Write a program that asks the user for their age in years, 
# # and then converts that age to months. Examples:
# $ ruby age.rb
# >> What is your age in years?
# 35
# You are 420 months old.

puts "how many years you?"
years = gets.to_i
months = years * 12
puts "you are #{months} months old."

# 3. Write a program that asks the user whether they want the program
# to print "something", then print it if the user enters y. 
# Otherwise, print nothing. Examples:
$ ruby something.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something.rb
>> Do you want me to print something? (y/n)
n

$ ruby something.rb
>> Do you want me to print something? (y/n)
help

puts "if you want something press y"
answer = gets.chomp.downcase # finally here I understand value of chomp
puts "something" if answer == "y"

# 4. Modify your program so it prints an error message for any inputs
# that aren't y or n, and then asks you to try again. Keep asking for a
# response until you receive a valid y or n response. In addition, your
# program should allow both Y and N (uppercase) responses; case sensitive
# input is generally a poor user interface choice. Whenever possible, accept
# both uppercase and lowercase inputs.

$ ruby something2.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something2.rb
>> Do you want me to print something? (y/n)
help
>> Invalid input! Please enter y or n
>> Do you want me to print something? (y/n)
Y
something

$ ruby something2.rb
>> Do you want me to print something? (y/n)
N

$ ruby something2.rb
>> Do you want me to print something? (y/n)
NO
>> Invalid input! Please enter y or n
>> Do you want me to print something? (y/n)
n

answer = nil # initializing in outer scope to have in outer and inner
loop do
puts "if you want something press y. if you want nothing press n"
answer = gets.chomp.downcase
break if %w(y n).include?(answer) # backwards syntax but ok, include is like this
puts "not this! y or n pls"
end
puts "something" if answer == 'y'

# 5. Write a program that prints 'Launch School is the best!' repeatedly
# until a certain number of lines have been printed. The program should
# obtain the number of lines from the user, and should insist that
# at least 3 lines are printed.

# For now, just use #to_i to convert the input value to an Integer, 
# and check that result instead of trying to insist on a valid number; 
# validation of numeric input is a topic with a fair number of 
# edge conditions that are beyond the scope of this exercise.

# $ ruby lsprint.rb
# >> How many output lines do you want? Enter a number >= 3:
# 5
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!

# $ ruby lsprint.rb
# >> How many output lines do you want? Enter a number >= 3:
# 2
# >> That's not enough lines.
# >> How many output lines do you want? Enter a number >= 3:
# 3
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!

answer = nil 

loop do
puts "how many times u wanna see it"
answer = gets.to_i #I guess with integers you don't need .chomp?
break if answer >= 3
puts "more"
end

while answer > 0
  puts "Launch School is the best!"
  answer -= 1
end

# 6. Write a program that displays a welcome message, but only after the
# user enters the correct password, where the password is a string that is
# defined as a constant in your program. Keep asking for the password until
# the user enters the correct password.

$ ruby password.rb
>> Please enter your password:
Hello
>> Invalid password!
>> Please enter your password:
Secret
>> Invalid password!
>> Please enter your password:
SecreT
Welcome!

password = "LAribs"

loop do
puts "password please"
password_try = gets.chomp
break if password_try == password # break if %w(LAribs).include?(password)
puts "show me the ribs!"
end

puts "yeee"

# 7. Modify the program so it also requires a user name. The program should
# solicit both the user name and the password, then validate both, and
# issue a generic error message if one or both are incorrect; the error
# message should not tell the user which item is incorrect.

$ ruby login.rb
>> Please enter user name:
John
>> Please enter your password:
Hello
>> Authorization failed!
>> Please enter user name:
mary
>> Please enter your password:
SecreT
>> Authorization failed!
>> Please enter user name:
admin
>> Please enter your password:
root
>> Authorization failed!
>> Please enter user name:
admin
>> Please enter your password:
SecreT
Welcome!

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

# 8. Write a program that asks the user to enter two integers, then
# prints the results of dividing the first by the second. The second
# number must not be 0. Since this is user input, there's a good chance
# that the user won't enter a valid integer. Therefore, you must validate
# the input to be sure it is an integer. You can use the following code
# to determine whether the input is an integer:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts "numerator please."
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "invalid! only integers please."
end

loop do
  puts "denominator please."
  denominator = gets.chomp
  break if valid_number?(denominator) && denominator != '0'
  puts "invalid! only integers please, except for 0."
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"

# It returns true if the input string can be converted to an integer
# and back to a string without loss of information, false otherwise.
# It's not a perfect solution in that some inputs that are otherwise valid
# (such as 003) will fail, but it is sufficient for this exercise. Examples:

$ ruby division.rb
>> Please enter the numerator:
8
>> Please enter the denominator:
2
>> 8 / 2 is 4

$ ruby division.rb
>> Please enter the numerator:
8.3
>> Invalid input. Only integers are allowed.
>> Please enter the numerator:
9
>> Please enter the denominator:
4
>> 9 / 4 is 2


$ ruby division.rb
>> Please enter the numerator:
10
>> Please enter the denominator:
a
>> Invalid input. Only integers are allowed.
>> Please enter the denominator:
0
>> Invalid input. A denominator of 0 is not allowed.
>> Please enter the denominator:
5
>> 10 / 5 is 2

# 9. Modify LS Printer so it repeats itself after each input/print iteration,
# asking for a new number each time through. The program should keep running
# until the user enters q or Q. Examples:

# $ ruby lsprint2.rb
# >> How many output lines do you want? Enter a number >= 3 (Q to quit):
# 5
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# >> How many output lines do you want? Enter a number >= 3 (Q to quit):
# 2
# >> That's not enough lines.
# >> How many output lines do you want? Enter a number >= 3 (Q to quit):
# 3
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# >> How many output lines do you want? Enter a number >= 3 (Q to quit):
# q

# LS:
loop do
  number_of_lines = nil
  input_string = nil

  loop do
  puts 'how many times u wanna see it. q to quit.'

  input_string = gets.chomp.downcase
  break if input_string == 'q'

  number_of_lines = input_string.to_i
  break if number_of_lines >= 3

  puts "not enough lines."
  end

  break if input_string == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end

# Edgar Condori: 
loop do
  puts "How many lines do you want? Enter a number >= 3 (Q to quit)"
  answer = gets.chomp
  break if answer.downcase == "q"
  if answer.to_i >= 3
    answer.to_i.times {puts "Launch School is the best!"} 
  else puts "That's not enough lines"
  end
end

# 10. Write a program that requests two integers from the user, adds them
# together, and then displays the result. Furthermore, insist that one of the
# integers be positive, and one negative; however, the order in which the two
# integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers
# are entered, and start over if the requirement is not met.

$ ruby opposites.rb
>> Please enter a positive or negative integer:
8
>> Please enter a positive or negative integer:
0
>> Invalid input. Only non-zero integers are allowed.
>> Please enter a positive or negative integer:
-5
8 + -5 = 3

$ ruby opposites.rb
>> Please enter a positive or negative integer:
8
>> Please enter a positive or negative integer:
5
>> Sorry. One integer must be positive, one must be negative.
>> Please start over.
>> Please enter a positive or negative integer:
-7
>> Please enter a positive or negative integer:
5
-7 + 5 = -2

#You may use the following method to validate input integers:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer1 = nil
integer2 = nil

loop do
puts "Please enter one positive and one negative integer. (Not zero.)"
integer1 = gets.chomp
break if valid_number?(integer1)
puts "Invalid."
end

loop do
puts "Now the other type of integer please."
integer2 = gets.chomp
break if valid_number?(integer2) && integer1.to_i * integer2.to_i < 0
puts "Invalid! One has to be positive, one negative."
end

result = integer1.to_i + integer2.to_i
puts "#{integer1} + #{integer2} = #{result}"

# LS:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

first_number = nil
second_number = nil

def read_number
  loop do
    puts "pos or neg integer"
    number = gets.chomp
    return number.to_i if valid_number?(number) #this starts the first loop again, for the second number?
    puts "invalid. only non-zero integers."
  end
end

loop do
  first_number = read_number # wow so you can just make a variable equal to a method
  second_number = read_number # and make two variables equal to a method
  break if first_number * second_number < 0
  puts "sorry. one positive one negative."
  puts "please start over."
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"