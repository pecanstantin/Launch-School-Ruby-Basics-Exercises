#10. Given the code below, use a while loop to print "Hello!" twice.

#LS
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
greeting
number_of_greetings -= 1
end

#cyu5
def greeting
  puts 'Hello!'
end

number_of_greetings = 2
number_of_greetings.times {greeting}