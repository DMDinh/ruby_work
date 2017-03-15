require_relative 'mammal'
class Dog < Mammal
  def bark
    puts "Woof Woof Woof bitch"
    self
  end

  def speak
    puts "What you barking for human?"
    self
  end

  def who_am_i
    puts self
    self
  end

  def pet
    @health += 5
    puts "Homie got petted! health increased by 5!"
    self
  end

  def walk
    @health -= 1
    puts "Homie is walking...minus 1 health..."
    self
  end

  def run
    @health -= 10
    puts "Homie is running!! Minues health by 10..."
    self
  end

  def display_health
    super
    self
  end

end

homie = Dog.new
homie.walk.walk.walk.run.run.pet.pet.display_health
