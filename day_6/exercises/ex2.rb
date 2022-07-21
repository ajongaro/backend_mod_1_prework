class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end

  def speed_up(target)
    @speed += target
    puts "You accelerate #{target} MPH!"
  end

  def current_speed
    puts "You're going #{@speed} MPH!"
  end

  def brake(target)
    @speed -= target
    puts "You slow down #{target} MPH!"
  end

  def turn_off
    @speed = 0
    puts "Car is turned off."
  end

  def spray_paint(color)
    self.color = color
  end
end

camry = MyCar.new(2014, "Maroon", "Toyota Camry")
camry.speed_up(50)
camry.current_speed
camry.speed_up(20)
camry.current_speed
camry.brake(70)
camry.turn_off
camry.current_speed

puts '-' * 10

camry.color = "white"
puts camry.color
puts camry.year

camry.spray_paint("blue")
puts camry.color
