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

