# 10. Write a program that requests two integers from the user, adds them
# together, and then displays the result. Furthermore, insist that one of the
# integers be positive, and one negative; however, the order in which the two
# integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers
# are entered, and start over if the requirement is not met.

# $ ruby opposites.rb
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 0
# >> Invalid input. Only non-zero integers are allowed.
# >> Please enter a positive or negative integer:
# -5
# 8 + -5 = 3

# $ ruby opposites.rb
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 5
# >> Sorry. One integer must be positive, one must be negative.
# >> Please start over.
# >> Please enter a positive or negative integer:
# -7
# >> Please enter a positive or negative integer:
# 5
# -7 + 5 = -2

#You may use the following method to validate input integers:
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# integer1 = nil
# integer2 = nil

# loop do
# puts "Please enter one positive and one negative integer. (Not zero.)"
# integer1 = gets.chomp
# break if valid_number?(integer1)
# puts "Invalid."
# end

# loop do
# puts "Now the other type of integer please."
# integer2 = gets.chomp
# break if valid_number?(integer2) && integer1.to_i * integer2.to_i < 0
# puts "Invalid! One has to be positive, one negative."
# end

# result = integer1.to_i + integer2.to_i
# puts "#{integer1} + #{integer2} = #{result}"

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