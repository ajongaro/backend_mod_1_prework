# Solving checker_board
1. Need two loops, one within the other
1. The interior loop should figure out if it's an X or a " " and print it to the appropriate number and then start a new line
1. The exterior loop should repeat that process as many times as the size of the board is to make it a square.
1. Odd lines start with X's and even lines start with " "
1. Iterate a variable so the loop knows which line is which.



# Solving caesar_cipher

1. I need a way to identify what letter is being assessed and what to move it to based on the shift

1. So take user input for the shift integer and string to be encoded. I want to take it a step further and maintain capitalization, numbers, and punctuation

1. I learned about .ord and .chr which convert a character to/from its 8-bit code, which would work for assigning integer values to the alphabet. (65-90 for A-Z, etc.) What I want to try is using an array, then referencing the index of the alphabet-filled array as the 'number' to represent the letter.

1. Break up the user's string into an array of its own, split on ""
  1. Iterate over this array using .each
  1. use 4-way if/elsif/elsif/else for upcase/downcase/integer/else (punctuation)
  1. determine if shift causes the letter to need to be wrapped back to opposite end of alphabet
  1. shovel shifted result into new array
  1. join new array together "" and print result

1. Post-note: This code ended up being a hot mess, but I'm going to move on because I'm pretty sure my refactoring skills will get better as I move forward from here and learn more about OOP so I'm going to just keep going.
