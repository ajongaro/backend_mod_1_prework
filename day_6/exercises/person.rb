# Create a person class with at least 2 attributes and 2 behaviors.
# Call all person methods below the class and print results
# to the terminal that show the methods in action.

class Person
  attr_reader :eyes, :hair, :skill
  def initialize(eyes, hair, skill)
    @eyes  = eyes
    @hair  = hair
    @skill = skill
  end

  def dance(x)
    puts "He's dancing the #{x}!"
  end

  def skill
    puts "Look at him, so focused on #{@skill}ing!"
  end
end

anthony = Person.new("blue", "bald", "bowstaff")

puts "Anthony has #{anthony.eyes} eyes, #{anthony.hair} hair."
anthony.skill
anthony.dance("bachata")
