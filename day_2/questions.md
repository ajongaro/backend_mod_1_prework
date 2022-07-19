## Day 2 Questions

1. Create an array containing the following strings: `"zebra", "giraffe", "elephant"`.
array = ["zebra", "giraffe", "elephant"]

1. Save the array you created above to a variable `animals`.
Above
1. Using the array `animals`, how would you access `"giraffe"`?
animals[1]
animals[-2]
animals.select("giraffe")

1. How would you add `"lion"` to the `animals` array?
animals << "lion"
animals.push("lion")

1. Name and describe two additional array methods:
.each iterates over an array one element at a time while following block instructions
.include? returns a boolean value on whether x is an element of the array

1. What are the boolean values in Ruby?
true or false statements that can be evaluated in multiple ways using different operators
< > <= >= <=> == != && || etc

1. In Ruby, how would you evaluate if `2` is equal to `25`? What is the result of this evaluation?
2 == 25 would return a 'false' boolean

1. In Ruby, how would you evaluate if `25` is greater than `2`? What is the result of this evaluation?
25 > 2 would return a 'true' boolean
