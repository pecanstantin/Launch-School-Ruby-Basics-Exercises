# 1. What will the following code print and why?
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a # 7

# to make a equal to 17:
a = 7

def my_value(b)
  b += 10
  a = b
end

a = my_value(a)
puts a # 17

# 2.
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a # 7

# 3.
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a # 7
# here a + 5 does become b; b is now 12, 
# and then the a inside of the method is 12 too

# 4.
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a # Xy-zy
# In these kinds of instances, strings are mutable -- can be modified

# 5.
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a # Xyzzy
# b and by extension a is assigned a new string, thus original a is not modified

# 6.
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a # `my_value': undefined local variable or method `a' for main:Object (NameError)
# doesn't work because what is a + a when it's undefined? you don't know.
# unlike in Ex3 where we only equalized b to a, so it's possible

# 7.
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
  # "puts a" here will print "1 | 2 | 3"
end

puts a # 3
# method invocation with a block. can modify local variables defined outside
# but the crazy part is that a = element goes in sequence and ends as just 3

# 8.
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a # undefined local variable or method `a' for main:Object (NameError)
# no defined a in main scope

# 9.
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a # 7
# variable shadowing. when ruby looks for variable a in a += 1, it first looks
# within the block. if it finds it there, it stops looking.
p array # [1, 2, 3]. the block doesn't change it permanently

#if
a = 7
array = [1, 2, 3]

array.each do |b|
end
a = b + 1 # this would just be '4', because .each ends on the last one

#if
a = 7
array = [1, 2, 3]

array.each do |b|
  a += 1
end

puts a # 10. .each iterates, ends at a = 7 + 3 # or does it just add 1+1+1?

# 10.
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a # undefined method `+' for nil:NilClass (NoMethodError)
# the block is inside of a method definition, so it can't get the main a

#if
a = 7
array = [1, 2, 3]

  array.each do |b|
    a += b
    # puts a # 8, 10, 13 
    # so each previous number adds to a, crazy
  end

puts a # 13

#if
a = 7
array = [1, 2, 3]

def my_value(ary, a)
  ary.each do |b|
    a += b
  end
end

my_value(array, a)
puts a # 7
# here a and my_value(a) at first point to the same object, that 7, but then
# the method only changes the method argument a, not main a