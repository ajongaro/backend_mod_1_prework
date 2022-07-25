# the fizzbuzz solve

class FizzBuzz
  attr_accessor :numbers, :result

  def initialize
    @numbers = (1..100).to_a
    @result = []
  end

  def generator
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
  end

  def printer
    @result.each_with_index do |x, index|
      unless index == @result.size - 1
        print "#{x}, "
      else
        print "#{x}."
      end
    end
  end

end

project = FizzBuzz.new
project.generator
project.printer
