class User
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end

  def my_name
    puts "My name is #{@first_name} #{@last_name}."
  end

end

class CodingDojo
  @@no_of_branches = 0
  def initialize(id, name, address)
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@no_of_branches += 1
    puts "\nCreated branch #{@@no_of_branches}"
  end

  def hello
    puts "Hello CodingDojo!"
  end

  def displayAll
    puts "Branch ID: %d" % @branch_id
    puts "Branch Name: %s" % @branch_name
    puts "Branch Address: %s" % @branch_address
  end
end

class MyObj
  def public_method
  end
  protected
  def protected_method
  end
  def protected_method2
  end
  private
  def private_method
  end
  def private_method2
  end
end

class ParentClass
  def a_method
    puts "a method"
  end
end


class SomeClass < ParentClass
  def another_method
    puts "another method"
  end
end

class Mammal
  def initialize
    puts "I am alive!"
  end
  def breath
    puts "Inhale and exhale"
  end
end

class Cat < Mammal
  def meow
    puts "PRrrrrrrrr"
    self
  end
  def speak
    puts "I can talk too human!"
    self
  end
  def who_am_i
    puts self
    self
  end
end

sushi = Cat.new
sushi.meow.speak.who_am_i

# instance = SomeClass.new
# instance.another_method
# instance.a_method



# branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
# branch.displayAll
# branch2 = CodingDojo.new(1995, "Bethany Ave", "San Jose CA")
# branch2.displayAll
#
# David = User.new("David", "Dinh")
#
# David.my_name
