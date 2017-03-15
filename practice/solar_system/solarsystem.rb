
class Solar_System
  @@planet_count = 0
  attr_accessor :name
  def initialize(name='Andromeda')
    @name = name
    @planet_list = []
  end

  def counter
    for i in @planet_list
      @@planet_count += 1
    end
    puts "There are #{@@planet_count} planets in the solarsystem!!!!"
  end

  def add_planet(planet)
    if planet.class != Planet
      return false
      puts "Not a planet!"
    else
      @planet_list.push(planet)
      self
    end
  end

  def plist
    for i in @planet_list
      puts i.name, i.description, i.population
      puts "----------------------"
    end
  end

  def supernova
    @planet_list = []
    @@planet_count = 0
    puts "EVERYTHING IS DESTROYED IN THIS SOLAR SYSTEM!"
    puts "#{@@planet_count}"
  end

end

class Planet
  attr_accessor :name, :description, :population
  def initialize(name, description, population)
    @name = name
    @description = description
    @population = population
  end

  def display_info
    puts "Planet name: #{@name}"
    puts "Description: #{@description}"
    puts "Population: #{@population}"
    self
  end
end


# s1 = Solar_System.new
# p1 = Planet.new("Davids", "Planet full of Davids", 100000)
# p2 = Planet.new("X", "XXXXXXXXX", 10)
# p3 = Planet.new("Hell", "Everything is burning.", 66666666666)
# p4 = Planet.new("Heaven", "Everything is so clean....", 12930724963219756493)
# p5 = Planet.new("Dojo", "Numbers and screens everywhere!", 420)
# s1.add_planet(p1).add_planet(p2).add_planet(p3).add_planet(p4).add_planet(p5)
# s1.plist
# s1.counter
# s1.supernova
# s1.counter
# s1.counter
