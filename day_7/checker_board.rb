puts "Okay, what size board do you want? (1 - n?)"
print "> "
size = gets.chomp.to_i

# make the board out of strings
def board_maker(size, cols=1, rows=1)
  until rows > size do
    until cols > size do
      if rows.odd?
        cols.odd? ? (print "X") : (print " ")
      else
        cols.odd? ? (print " ") : (print "X")
      end
      cols += 1
    end
    rows += 1
    cols = 1
    print "\n"
  end
end

# make the board into an array
def board_maker_array(size, cols=1, rows=1, result=[], final_result=[])
  until rows > size do # each horizontal row is one iteration
    until cols > size do # builds the horizontal row one at a time
      if rows.odd? # checks whether odd or even row for "X" or " " start
        cols.odd? ? (result << "X") : (result << " ") #
      else
        cols.odd? ? (result << " ") : (result << "X")
      end
      cols += 1
    end

    # shovel each row into new 2d array for board aesthetic
    final_result << result
    # reset result array and column count
    result = []
    cols = 1
    # move down to next row on board
    rows += 1
  end
  # cleanly print rows of 2d array
  final_result.each { |x| print "#{x}\n" }
end


# make a string board
board_maker(size)

# make an array board that prints all nice
board_maker_array(size)
