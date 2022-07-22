# the fizzbuzz solve

# create an array of numbers 1 - 100, inclusive
numbers = (1..100).to_a
# new array for resulting data
result = []

# each loop and flow control
numbers.each do |x|
  if x % 3 == 0 && x % 5 == 0
    result << "FizzBuzz"
  elsif x % 3 == 0
    result << "Fizz"
  elsif x % 5 == 0
    result << "Buzz"
  else
    result << x
  end
end

# print array (simple)
p result

# iterate and put a period at the end instead of ", "
result.each_with_index do |x, index|
  # unless the index of elemnt being printed is the same as the size of the array minus one (the last element)
  unless index == result.size - 1
    print "#{x}, "
  else
    print "#{x}."
  end
end
