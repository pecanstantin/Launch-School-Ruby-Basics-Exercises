# 4. The code below asks the user "What does 2 + 2 equal?" and uses #gets 
# to retrieve the user's answer. Modify the code so "That's correct!" is printed
# and the loop stops when the user's answer equals 4. Print "Wrong answer. Try again!"
# if the user's answer doesn't equal 4.

#LS:
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    p "That's correct!"
    break
  end

    p "Wrong answer. Try again!"
end

#Jaimee Armstead:
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  break if answer == 4
  puts "Wrong answer. Try again!"
end

puts "That's correct!"