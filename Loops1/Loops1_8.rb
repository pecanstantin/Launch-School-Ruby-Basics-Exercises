# 8. Given the array of several numbers below, 
# use an until loop to print each number.
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size # here the size is 4 # yeah, so .size is by index
  puts numbers[count]
  count += 1
end

#Jack H.:
numbers = [7, 9, 13, 25, 18]

until numbers.empty?
  puts numbers.shift
end