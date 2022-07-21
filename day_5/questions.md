## Day 5 Questions

1. What is a Hash, and how is it different from an Array?

* Hashes are unordered collections, where arrays are ordered and accessed by index position.
* Hashes use key/value pairs to store data like a dictionary and can have almost any type of data in them.

1. In the space below, create a Hash stored to a variable named `pet_store`.  This hash should hold an inventory of items and the number of that item that you might find at a pet store.
```ruby
pet_store = {"Dog Food" => "20", "Pet Hamster" => "3", "Goldfish" => "8"}
```
1. Given the following `states = {"CO" => "Colorado", "IA" => "Iowa", "OK" => "Oklahoma"}`, how would you access the value `"Iowa"`?
```ruby
states["IA"]
```
1. With the same hash above, how would we get all the keys?  How about all the values?
```ruby
states.keys # keys
states.values # values
```
1. What is another example of when we might use a hash?  In your example, why is a hash better than an array?

* You could store bank account numbers as keys and account balance as their values
* Hash is better in this instance because every acct number is unique, and would not be ordered in any way
thus being able to access a balance using only the key instead of index position is ideal.

1. What questions do you still have about hashes?

* Really curious about seeing larger scale applications of hashes and how they are used in software.
