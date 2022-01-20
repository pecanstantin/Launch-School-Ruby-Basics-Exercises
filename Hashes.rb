# # 1. Create a hash and assign it to a variable named car.
# car = {type: 'sedan', color: 'blue', mileage: 80_000}
# puts car

# # 2. Add the key :year and the value 2003 to car.
# car[:year] = 2003
# puts car

# # 3. Delete the key :mileage and its associated value from car.
# car.delete(:mileage)
# puts car

# # 4. Select the value 'blue' from car and print it with #puts.
# puts car[:color]

# 5. Use Hash#each to iterate over numbers and print each element's key/value pair.

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each do |x, y| # two block parameters in hashes
#   puts "A #{x} number is #{y}."
# end

# 6. Use Enumerable#map to iterate over numbers and return an array containing
# each number divided by 2. Assign the returned array to a variable named
# half_numbers and print its value using #p.

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# half_numbers = numbers.map do |x, y| # Enumerable#map accepts two block parameters
#   y / 2
# end # Doesn't return a hash; also returns array like Array#map.

# p half_numbers

# 7. Use Hash#select to iterate over numbers and return a hash containing only
# key-value pairs where the value is less than 25. Assign the returned hash
# to a variable named low_numbers and print its value using #p.

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# under25 = numbers.select do |x, y|
#   y < 25
# end #Hash#select /does/ return a hash, not an array

# p under25

# 8. Note: If you assign a variable to a variable+.select!, the two variables
# will point to the /same hash/.

# 9. Create a nested hash using the following data.

# vehicles = {
#   car: {type: 'sedan', color: 'blue', year: 2003}, 
#   truck: {type: 'pickup', color: 'red', year: 1998}
# }

# puts vehicles

# 10. Rewrite car as a nested array containing the same key-value pairs.

car = [[:type 'sedan'], [:color 'blue'], [:year, 2003]]

# hash is better here:
# car[:color] vs
# car[1][1]