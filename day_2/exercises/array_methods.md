# Array Methods, Defined

## Manipulation / Calling
- .sort
  Orders all elements from A -> Z || 0 -> 9

- .join()
  Joins all elements together into a string

- .at
  At which position (index) do you want to return an element in an array

- .fetch
  Returns error if index number called is outside the range of the array

- .first
  Returns the first element at the beginning of an array

- .last
  Returns the last element at the end of an array

- .take
  Returns first (n) elements in array

- .drop
  Opposite of .take where it returns all elements AFTER (n) elements have been dropped

- .shuffle
  Randomly shuffles all array elements

## Obtaining Information
- .length .count .size
  Returns number of elements in an array as an Integer

- .empty?
  Checks if contains nil or not returns boolean

- .include?
  Checks to see if argument matches an element in array and returns boolean t/f

## Adding Items
- .push || << (shovel operator)
  Adds item to the END of an array - often used in loops

- .unshift
  Adds new item to the BEGINNING of an array  

- .insert
  Add new element to ANY position based on Index of position, and multiple values at once
    ie: var.insert(3, 'purple', 'blue', 'green')

## Removing Items
- .pop
  REMOVES the last element in an array and RETURNS IT

- .shift
  REMOVES and RETURNS the first item in an array

- .delete_at
  Deletes element at specified index position in the array

- .delete
  Deletes SPECIFIC element anywhere in the array
    ie: numbers in array, delete (4) and all instances of 4 are deleted

- .compact
  Removes all nil values from array, will destroy structure if !

- .uniq
  Removes duplicate elements from an array, destructive if !

## Iterating Over
- .each
  Iterates through each element of an array and applies |x| x + ? or whatever logic you choose to each individually.
    ie: does not alter array unless set to new array variable

- .reverse_each
  Iterates over the array in REVERSE order (obviously)

- .map / .collect
  Create a new array based on values as modified by supplied block

## Selecting Items
### Non-destructive Selection
- .select
  Selects all elements that meet boolean criteria in passed in block

- .reject
  Rejects all elements that do not meet boolean criteria in passed block (returns the rest)

### Destructive Selection
- .select! / .reject!
  Same as above but permanently changes the array

- .delete_if
  Destructively deletes elements that meet boolean criteria

- .keep_if
  Destructively deletes elements that do not meet boolean criteria
