# then there were > 1
# then there was == 1
# then there were no more == 0

# method for evaluating to print string or integer and capitalize or not
class FrogRhyme
  
  def initialize(frogs)
    @frogs = frogs.to_i
    @spelled_numbers = {
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
    }
  end

  def int_or_str(capitalize=false)
    # if the frog count is 9 or less, we're writing it out
    if @frogs < 10
      # and capitalize is true, pass capitalized spelled, otherwise pass value as is
      capitalize == true ? @spelled_numbers[@frogs].capitalize : @spelled_numbers[@frogs]
    else
      return @frogs
    end
  end

  # put together the rhyme
  def rhyme_logic
    if @frogs == 1
      # if one frog left, frog is singular
      puts "One speckled frog sat on a log"
    else
  # if mulitple frogs left, it's plural - maybe better way to do this, lots of non-DRY code
      puts "#{int_or_str(true)} speckled frogs sat on a log"
    end
  # create second and third line
    puts "eating some most delicious bugs."
    puts "One jumped in the pool where its nice and cool"
    @frogs -= 1
  # create fourth line
    case @frogs
    when 1 then puts "then there was one speckled frog!"
    when 0 then puts "then there were no more speckled frogs!"
    else puts "then there were #{int_or_str} speckled frogs!"
    end
    puts "" # new line
  end

  # execute the program
  def execute
    until @frogs == 0
      rhyme_logic
     # one less frog on log :(
    end
  end
end

song = FrogRhyme.new(10)
song.execute
