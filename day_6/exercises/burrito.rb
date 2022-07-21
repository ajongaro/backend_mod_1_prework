# Add the following methods to this burrito class and
# call the methods below the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :protein, :base, :toppings

  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def add_topping(x)
    toppings << x
  end

  def remove_topping(x)
    if toppings.include? x
      toppings.delete(x)
    else
      puts "What #{x.downcase} are you talking about?"
    end
  end

  def change_protein(x)
    @protein = x # because attr_reader doesn't allow changing, must use @ here or add attr_accessor/writer to the top
  end

end

# What's for dinner, kids?
dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
p dinner.protein
p dinner.base
p dinner.toppings

dinner.add_topping("pepperoni")
p dinner.toppings

dinner.remove_topping("cheese")
p dinner.toppings

dinner.remove_topping("peppers")
p dinner.toppings

dinner.change_protein("Steak")
p dinner.protein

p dinner
