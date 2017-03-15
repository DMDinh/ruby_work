class Car
  puts "I am a car!"


  attr_accessor :color, :miles
  def initialize
    @miles = 0
  end

  def drive_to_work
    @miles += 15
    self
  end

end

class Tesla < Car
  attr_accessor :charge

  def initialize
    super
    @charge = 100
  end

end
