require_relative 'human'
class Wizard < Human
  def initialize(name)
    @name = name
    @strength = 10
    @intelligence = 175
    @health = 100
    @stealth = 3
  end

  def heal
    @health += 10
    puts "You healed yourself by 10hp!"
    self
  end

  def fireball(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      puts "Fireball attack!"
      true
    else
      false
    end
    self
  end

  def display_info
    super
    self
  end
end

# wizard1 = Wizard.new("Gandolf")
# wizard2 = Wizard.new("Sarumon")
# wizard1.fireball(wizard2)
# wizard2.display_info.heal
