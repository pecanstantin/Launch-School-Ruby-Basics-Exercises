# 9. The code below shows an example of a for loop. 
# Modify the code so that it only outputs i if i is an odd number.
for i in 1..100
  puts i if i.odd?
  # or: puts i if i % 2 != 0
end

# for i in 1..100
# if i = i % 2 != 0
#   puts i
# end
# end
# this puts out 50 true statements, oddly
