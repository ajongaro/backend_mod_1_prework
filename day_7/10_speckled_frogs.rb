# then there were > 1
# then there was == 1
# then there were no more == 0

# method for evaluating to print string or integer and capitalize or not
def int_or_str(frogs, capitalize=false)
  # hash of key/value for int to str translation
  spelled_numbers = {
    0  => "zero",
    1  => "one",
    2  => "two",
    3  => "three",
    4  => "four",
    5  => "five",
    6  => "six",
    7  => "seven",
    8  => "eight",
    9  => "nine",
    # if the AP Style Guide doesn't write out numbers above nine, im not doin it either
  }
  # if the frog count is 9 or less, we're writing it out
  if frogs < 10
    # and capitalize is true, pass capitalized spelled, otherwise pass value as is
    capitalize == true ? spelled_numbers[frogs].capitalize : spelled_numbers[frogs]
  else
    return frogs
  end
end

# create first line
def line_1(x)
  if x == 1
    # if one frog left, frog is singular
    puts "One speckled frog sat on a log"
  else
    # if mulitple frogs left, it's plural - maybe better way to do this, lots of non-DRY
    puts "#{int_or_str(x, true)} speckled frogs sat on a log"
  end
end

# create second and third line
def line_2_3
  puts "eating some most delicious bugs."
  puts "One jumped in the pool where its nice and cool"
end

# create fourth line
def line_4(x)
  case x
  when 1 then puts "then there was one speckled frog!"
  when 0 then puts "then there were no more speckled frogs!"
  else puts "then there were #{int_or_str(x)} speckled frogs!"
  end
end

# PROGRAM STARTS HERE
# ask user how many frogs they want to rap about
print "How many dang frogs are there? 1 - n > "
num_of_frogs = gets.chomp.to_i # convert to i

# loop this baby down until no frogs left
until num_of_frogs == 0
  line_1(num_of_frogs) # first line method
  line_2_3 # middle two method
  num_of_frogs -= 1 # one less frog on log :(
  line_4(num_of_frogs) # last line method
  puts "" # new line
end
