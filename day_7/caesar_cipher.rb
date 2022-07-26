class CaesarCipher
  attr_reader :up_alphabet, :down_alphabet, :numbers, :string, :shift
  attr_accessor :encoded

  def initialize(string, shift)
    @up_alphabet = ("A".."Z").to_a # A = 0, Z = 25
    @down_alphabet = ("a".."z").to_a # a = 0, z = 25
    @numbers = ("0".."9").to_a
    @string = string.split("")
    @shift = shift.to_i
    @encoded = Array.new
  end

  # this adjusts the index position by required shift if it does not wrap
  def find_new_letter(y, original_string)
    index_position = y.index(original_string)
    return y[index_position + @shift]
  end
  # this adjusts the index position if it DOES wrap
  def find_new_letter_wrap(y, original_string)
    index_position = y.index(original_string) # returns an int (position in library)
    wrapped_letter = ((index_position + @shift) % 26)
    return y[wrapped_letter]
  end

  # manages the control flow for how to shift each letter
  def sorting_algo(which_dic, x)
    if find_new_letter(which_dic, x)
      @encoded << find_new_letter(which_dic, x)
    else
      @encoded << find_new_letter_wrap(which_dic, x)
    end
  end

  def encode
    @string.each do |x|
      if @up_alphabet.include? x
        sorting_algo(@up_alphabet, x)

      elsif @down_alphabet.include? x
        sorting_algo(@down_alphabet, x)

      elsif @numbers.include? x
        if x.to_i + @shift < 10
          @encoded << (x.to_i + @shift).to_s
        else
          @encoded << ((x.to_i + @shift) % 10).to_s
        end

      else
        @encoded << x
      end
    end
  end

  def print_result
    puts @encoded.join("")
  end
end


puts "What do you want to encode?"
input = gets.chomp
puts "And what shift? (Positive for right, Negative for left)"
shift = gets.chomp.to_i

test = CaesarCipher.new(input, shift)
test.encode
test.print_result
