require_relative 'mammal'
class Dragon < Mammal
  def initialize
    @health = 200
    self
  end
  def fly
    @health -= 10
    puts "Dragon is flying..minus 10 health."
    self
  end

  def attack_town
    @health -= 50
    puts "Dragon attacked a town! Took damage from them..minus 50 health."
    self
  end

  def eat_humans
    @health += 20
    puts "Dragon ate some fresh meat! Health increased by 20."
    self
  end
  def display_health
    super
    puts "I am a Dragon!"
    # puts "My current health is #{@health}"
    self
  end
end

dragon = Dragon.new
dragon.display_health.attack_town.attack_town.attack_town.display_health.eat_humans.eat_humans
