# 2. Write a program that asks the user for their age in years, 
# # and then converts that age to months. Examples:
# $ ruby age.rb
# >> What is your age in years?
# 35
# You are 420 months old.

puts "how many years you?"
years = gets.to_i
months = years * 12
puts "you are #{months} months old."