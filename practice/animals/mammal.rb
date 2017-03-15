class Mammal
  attr_accessor :alive
  def initialize(health = "")
    @health = 150
    @alive = true
    puts "I am alive!"
    self
  end
  def display_health
    puts "My current health is #{@health}."
    self
  end
end
