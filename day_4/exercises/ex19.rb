# creates new method with two parameters
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!" # takes first argument, interpolates string
  puts "You have #{boxes_of_crackers} boxes of crackers!" # same but second arg
  puts "Man that's enough for a party!" # puts string
  puts "Get a blanket.\n" # puts string
end

puts "We can just give the function numbers directly:" # puts string
cheese_and_crackers(20, 30) # calls method with two arguments, 20 and 30

puts "OR, we can use variables from our script:" # puts string
amount_of_cheese = 10 # defines variable as integer 10
amount_of_crackers = 50 # defines variable as integer 10

cheese_and_crackers(amount_of_cheese, amount_of_crackers) # calls method with 2 variables as args

puts "We can even do math inside too:" # puts string
cheese_and_crackers(10 + 20, 5 + 6) # adds 30 and 11 as arguments to method

puts "and we can combine the two, variables and math:" # puts string
# adds 100 to amount of cheese, and 1000 to amount of crackers then passes as args to method
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

# my practice
def workshop(wood, iron)
  puts "We have #{wood} wood, and #{iron} iron."
  puts "That's #{wood + iron} of both things totaled."
end

workshop(1,2)
puts "How much wood do you have?"
wood_count = gets.chomp.to_i
puts "How much iron do you have?"
iron_count = gets.chomp.to_i
puts "Dope.\n#{workshop(wood_count, iron_count)}"
workshop(1 * 2 ** 3, 1_000_000 - 995_000)
workshop(wood_count, 5)
workshop(75, iron_count)
