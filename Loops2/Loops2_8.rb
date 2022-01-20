#8. Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  next if number.odd? # if number % 2 == 0
    puts number
  end
end
# if you put next if number.odd above number +=1, after number becomes 1, it will
# be stuck in infinite loop without incrementing or outputting number again