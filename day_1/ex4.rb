# defines cars variable as 100 int
cars = 100
# defines space_in_a_car as 4.0 floating point int
space_in_a_car = 4.0
# defines drivers as 30 int
drivers = 30
# defines passengers as 90 int
passengers = 90
# defines cars_not_driven by subtracting drivers from cars
cars_not_driven = cars - drivers
# defines cars_driven equal to number of drivers
cars_driven = drivers
# defines carpool_capacity by multiplying cars_driven by how much space is in each car
carpool_capacity = cars_driven * space_in_a_car
# defines average_passengers_per_car by dividing number of passengers into number of avail cars
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
