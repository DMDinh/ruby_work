require_relative "human"
class Samurai < Human

  def initialize(name)
    @@samurai_counter += 1
    @name = name
    @strength = 20
    @intelligence = 20
    @health = 200
    @stealth = 5
  end




  def decapitate(obj)
    if obj.class.ancestors.include?(Human)
      puts "Decapitated! You are now headless!"
      obj.health = 0
      true
    else
      false
    end
    self
  end

  def mediate
    @health = 200
    puts "Mediated the situation. Back to 100% health!"
    self
  end

  def how_many
    puts "There are #{@@samurai_counter}"
    self
  end

  def display_info
    super
    self
  end
end

samurai1 = Samurai.new("Juggernaut")
samurai2 = Samurai.new("Genji")
samurai3 = Samurai.new("Jack")
# samurai1.mediate.display_info
# samurai1.decapitate(samurai2)
# samurai2.display_info
samurai2.how_many
