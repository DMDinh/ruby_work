require_relative 'human'
class Ninja < Human
  def initialize(name)
    @name = name
    @strength = 10
    @intelligence = 10
    @health = 100
    @stealth = 175
  end

  def steal(obj)
    if obj.class.ancestors.include?(Human)
      @health += 10
      obj.health -=10
      puts "Stealth attack!"
      true
    else
      false
    end
    self
  end

  def escape
    @health -= 15
    puts "Escaping!"
  end

  def display_info
    super
    self
  end
end

ninja1 = Ninja.new("Blade")
ninja2 = Ninja.new("Hunter")
ninja1.display_info
ninja1.steal(ninja2).steal(ninja2).steal(ninja2)
ninja2.display_info
