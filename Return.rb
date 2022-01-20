# 3. What will the following code print? Why? Don't run it until you've attempted to answer.

# def meal
#   return 'Breakfast'
#   'Dinner'
# end

# puts meal # 'Breakfast'
# return immediately exits the method.

# 4.
# def meal
#   puts 'Dinner'
#   return 'Breakfast'
# end

# puts meal
# 'Dinner'
# 'Breakfast'
# there are two #puts which means there will be more than one value printed.
# output would be the same without 'return' on :3

# 5.
def meal
  'Dinner'
  puts 'Dinner'
end

p meal
# Dinner
# nil (used p to show nil instead of blank line)
# the nil is the return value of 'meal', not just 'puts 'Dinner''

# 7.
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep
# 0
# 1
# 2
# 3
# 4
# 5
# 0-4 for what .times does, 5 for the return value of .times
# why isn't the return value nil due to puts inside method?
# "the #times block is the only code in the method. This means
# it's also the last line in the method." oook. puts is not code?

# without puts at the end, 5 will not print

# 8. 
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
# 0
# 1
# 2
# 3
# 4
# 10
# now 10 is the last code in method and thus the return by puts

# 9.
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return # if you added 'return this', it would
    end
  end
end

p count_sheep
# 0
# 1
# 2
# nil
# return is nil because it's on a separate line, empty
# it's nil even without 'puts sheep'. so, hard to know when there is a value
# and when there isn't

