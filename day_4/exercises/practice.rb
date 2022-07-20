# Practicing default method parameters

def say(nums, words = "hello")
  puts "#{nums}, #{words}."
  p "#{nums}, #{words}."
end

say(1)
say(4, "Test")
say(5)

# You don't actually need the ( )
say "test two"
say 9
