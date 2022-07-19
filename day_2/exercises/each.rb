require 'pry'

singers = ["billie", "ariana", "lizzo", "leon"]
numbers = [1, 2, 3, 4, 5]

# Print all and capitalize
singers.each do |x|
  puts x.capitalize
end

# Print upcase
singers.each do |x|
  puts x.upcase
end

# Print out names but reversed
singers.reverse_each do |x|
  puts x
end

# New array with only names longer than 4 letters
new_array = Array.new
singers.each do |x|
  x.length > 4 ? new_array << x : nil
end

puts new_array

# New array with only length of names
new_array_2 = Array.new
singers.each do |x|
  new_array_2 << x.length
end

puts new_array_2

# New array with odd numbers only
new_array_3 = Array.new
numbers.each do |x|
  x.odd? ? new_array_3 << x : nil
end

puts new_array_3

# New array with only even numbers
new_array_4 = []
numbers.each do |x|
  x % 2 == 0 ? new_array_4 << x : nil
end

puts new_array_4

# Print each number doubled
numbers.each do |x|
  puts x * 2
end

# If number is divisible by 2 or not
numbers.each do |x|
  puts x % 2 == 0
end

# Sum of all the numbers
y = 0
numbers.each do |x|
  y += x
end
puts y
