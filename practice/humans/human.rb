class Human
  attr_accessor :name, :strength, :intelligence, :health, :stealth
  @@samurai_counter = 0
  def initialize(name)
    @name = name
    @strength = 10
    @intelligence = 5
    @health = 100
    @stealth = 5
  end

  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      puts "I am attacking you scum!"
      true
    else
      false
    end
    self
  end
  def display_info
    puts "Name: #{@name}."
    puts "Strength: #{@strength}."
    puts "Intelligence: #{@intelligence}."
    puts "Health: #{@health}."
    puts "Stealth: #{@stealth}."
    self
  end
end

bob = Human.new("Bob")
# bob.attack
# bob.display_info
