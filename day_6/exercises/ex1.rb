module Punch
  def punch(intensity)
    if intensity >= 4
      return " you punch hard!"
    else
      return " you punch lightly."
    end
  end
end

class MartialArtist
  attr_accessor :name, :style, :experience, :punch_str
  include Punch
end

student = MartialArtist.new
puts "Welcome to the Dojo. What's your name?"
student.name = gets.chomp

puts "And your preferred style?"
student.style = gets.chomp

puts "Years of experience?"
student.experience = gets.chomp.to_i

puts "Finally, how hard can you punch? [1 - 10]"
student.punch_str = gets.chomp.to_i

print "Well, #{student.name}, for a #{student.style} master with #{student.experience} years of experience,#{student.punch(student.punch_str)}"

students = {49382 => student}

p students
