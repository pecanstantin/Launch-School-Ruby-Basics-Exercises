# 4. Make it so the loop stops iterating when the user inputs 'yes'.
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer == 'yes'
  puts 'Well, up to you!'
end
# and if it's like this, break if on one line, then we don't need a
# second "end". we do need it if the "if" is separate